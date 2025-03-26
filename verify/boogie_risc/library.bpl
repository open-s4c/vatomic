datatype Ordering {
    AcquirePC(),
    Acquire(),
    Release(),
    Fence(ra, wa, rb, wb: bool)
}

datatype Monitor {
    exclusive(addr: int),
    open()
}

var local_monitor: Monitor;
var monitor_exclusive: bool;

datatype Instruction {
    ld(addr: int),
    sd(src, addr: int),
    lr(acq, rel: bool, addr: int),
    sc(acq, rel: bool, src, addr: int),
    mov(src: int),

    add(first, second: int),
    sub(first, second: int),
    andd(first, second: int),
    orr(first, second: int),
    eor(first, second: int),
    fence(ra, wa, rb, wb: bool)
}



procedure execute(instr: Instruction) returns (r : int);
    modifies effects, ordering, step, local_monitor, monitor_exclusive, last_store, last_load, atomic;
    requires (instr is sc ==> local_monitor is exclusive && local_monitor->addr == instr->addr);
    ensures step == old(step + 1);
    ensures (
        var sc_success :=
                    old(local_monitor is exclusive
                        && (local_monitor->addr == instr->addr)
                        && monitor_exclusive);
        (r == if instr is mov then instr->src
            else if instr is sc then b2i(!sc_success)
            else if instr is add then instr->first + instr->second
            else if instr is sub then instr->first - instr->second
            else if instr is andd then b2i(i2b(instr->first)&&i2b(instr->second))
            else if instr is orr then  b2i(i2b(instr->first)||i2b(instr->second))
            else if instr is eor then  b2i(i2b(instr->first)!=i2b(instr->second))
            else r)
        &&
        (last_load ==
                    if instr is ld
                     || instr is lr
                    then
                        old(step)
                    else
                        old(last_load))
        && 
        (last_store == 
                    if instr is sd
                     || (instr is sc && sc_success)
                    then
                        old(step)
                    else
                        old(last_store))
        &&
        (local_monitor == 
                    if instr is lr then
                        exclusive(instr->addr)
                    else if instr is sc || instr is sd || instr is ld then
                        open()
                    else
                        old(local_monitor))
        &&
        effects == old(effects[
            step := (
                ConstArray(false)
                    [read(instr->addr, r, true) :=
                        instr is ld
                        || instr is lr
                    ]
                    [write(instr->addr, instr->src) :=
                        instr is sd
                        || (instr is sc && sc_success)
                    ]

                )
            ])
        &&
        ordering == old(ordering[
            step := ConstArray(false)
                [Acquire() :=
                    instr->acq && (
                        instr is ld || 
                        instr is lr
                    )
                ]
                [Release() :=
                    instr->rel && (
                        instr is sd
                        || (instr is sc && sc_success)
                    )
                ]
                [Fence(instr->ra, instr->wa, instr->rb, instr->wb) := 
                    instr is fence
                ]
            ])
        &&
        ((
            monitor_exclusive == false  // external write can clear monitor at any moment
        )
        || monitor_exclusive == old(
            if instr is lr then
                true
            else if (instr is sd || instr is sc) then
                false
            else
                monitor_exclusive
        ))
        &&
        atomic == old(atomic[last_load, old(step) := 
            instr is sc && sc_success 
        ])
    );


function bne(r1: int, r2:int): bool {
    r1 != r2
}

function bnez(r: int): bool {
    r != 0
}


function ppo(step1, step2: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect): bool {
    step1 < step2 && (
        // Barrier-ordered-before
        ordering[step1] == Acquire() ||
        ordering[step1] == AcquirePC() ||
        ordering[step2] == Release() ||
        (ordering[step1] == Release() && ordering[step2] == Acquire()) ||

        (exists fenceId: StateIndex, fence: Ordering, e1, e2: Effect :: 
            fence is Fence && ordering[fenceId] == fence && effects[step1] == e1 && effects[step2] == e2 &&
            (step1 < fenceId && fenceId < step2) &&
            ((fence->ra && e1 is read) ||
             (fence->wa && e1 is write)
            ) && 
            ((fence->rb && e2 is read) ||
             (fence->wb && e2 is write)
            )
        )
    )
}

function is_sc(order: Ordering): bool {
    order is Acquire || order is Release
}