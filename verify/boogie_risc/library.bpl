datatype Ordering {
    Acquire(),
    Release(),
    AcquirePC(),
    ReleasePC(),
    AcqRel(),
    Fence(ra, wa, rb, wb: bool),
    NoOrd()
}

datatype AtomicType {
    AtomicAdd(),
    AtomicAnd(),
    AtomicMax(),
    AtomicMin(),
    AtomicOr(),
    AtomicXor(),
    AtomicSwap()
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
    mv(src: int),
    atomic(atom: AtomicType, acq, rel: bool, src, addr: int),

    add(first, second: int),
    sub(first, second: int),
    andd(first, second: int),
    orr(first, second: int),
    eor(first, second: int),
    fence(ra, wa, rb, wb: bool)
}


function updated_value(instr: Instruction, read_value : int) : int {
    if instr->atom is AtomicAdd then instr->src + read_value
    else if instr->atom is AtomicAnd then and[instr->src, read_value]
    else if instr->atom is AtomicMax then max[instr->src, read_value]
    else if instr->atom is AtomicMin then min[instr->src, read_value]
    else if instr->atom is AtomicOr then or[instr->src, read_value]
    else if instr->atom is AtomicXor then xor[instr->src, read_value]
    else if instr->atom is AtomicSwap then instr->src
    else 0
}

function rmw(instr: Instruction) : bool {
    instr is atomic
}

function reads(instr: Instruction) : bool {
    rmw(instr) || instr is ld || instr is lr
}

function writes(instr: Instruction) : bool {
    rmw(instr) || instr is sd
}


procedure execute(instr: Instruction) returns (r : int);
    modifies step, local_monitor, monitor_exclusive, last_store, last_load;
    requires (instr is sc ==> local_monitor is exclusive && local_monitor->addr == instr->addr);
    ensures step == old(step + 1);
    ensures (
        var sc_success :=
                    old(local_monitor is exclusive
                        && (local_monitor->addr == instr->addr)
                        && monitor_exclusive);
        (r == if instr is mv then instr->src
            else if instr is sc then b2i(!sc_success)
            else if instr is add then instr->first + instr->second
            else if instr is sub then instr->first - instr->second
            else if instr is andd then b2i(i2b(instr->first)&&i2b(instr->second))
            else if instr is orr then  b2i(i2b(instr->first)||i2b(instr->second))
            else if instr is eor then  b2i(i2b(instr->first)!=i2b(instr->second))
            else r)
        &&
        (last_load ==
                    if reads(instr)
                    then
                        old(step)
                    else
                        old(last_load))
        && 
        (last_store == 
                    if writes(instr) || (instr is sc && sc_success)
                    then
                        old(step)
                    else
                        old(last_store))
        &&
        (local_monitor == 
                    if instr is lr then
                        exclusive(instr->addr)
                    else if writes(instr) || reads(instr) || instr is sc then
                        open()
                    else
                        old(local_monitor))
        &&
        (effects[old(step)] == if rmw(instr) || (instr is sc && sc_success)
            then update(instr->addr, r, true, updated_value(instr, r))
            else if reads(instr)
            then read(instr->addr, r, true)
            else if writes(instr) 
            then write(instr->addr, instr->src)
            else no_effect())
        &&
        (ordering[old(step)] ==
            if instr->acq && instr->rel
                && (instr is lr
                    || (instr is sc && sc_success)
                    || rmw(instr))
            then AcqRel()
            else if instr->acq && reads(instr)
            then Acquire()
            else if (instr->rel && writes(instr))
                    || (instr is sc && sc_success)
            then Release()
            else if instr is fence
            then Fence(instr->ra, instr->wa, instr->rb, instr->wb) 
            else NoOrd())
        &&
        ((
            monitor_exclusive == false  // external write can clear monitor at any moment
        )
        || monitor_exclusive == old(
            if instr is lr then
                true
            else if writes(instr) || instr is sc then
                false
            else
                monitor_exclusive
        ))
        &&
        (atomic[last_load, old(step)] == (rmw(instr) || (instr is sc && sc_success)))
    );

function bne(r1: int, r2:int): bool {
    r1 != r2
}

function bnez(r: int): bool {
    r != 0
}

function is_acq(order: Ordering) : bool {
    order is Acquire || order is AcqRel || order is AcquirePC
}

function is_rel(order: Ordering) : bool {
    order is Release || order is AcqRel || order is ReleasePC
}


function ppo(step1, step2: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect): bool {
    step1 < step2 && (
        // Barrier-ordered-before
        is_acq(ordering[step1]) ||
        is_rel(ordering[step2]) ||
        (ordering[step1] == Release() && ordering[step2] == Acquire()) ||

        (exists fenceId: StateIndex, fence: Ordering, e1, e2: Effect :: 
            fence is Fence && ordering[fenceId] == fence && effects[step1] == e1 && effects[step2] == e2 &&
            (step1 < fenceId && fenceId < step2) &&
            ((fence->ra && is_read(e1)) ||
             (fence->wa && is_write(e1))
            ) && 
            ((fence->rb && is_read(e2)) ||
             (fence->wb && is_write(e2))
            )
        )
    )
}

function is_sc(order: Ordering): bool {
    order is Acquire || order is Release
}