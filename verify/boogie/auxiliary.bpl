/****************************************************************

        This file offers reusable code across architectures.

        It assumes the following be defined by each architecture / verification target:

            datatype Instruction
                instruction types

            datatype Ordering
                different ordering types, like acquire and release ordering or fences

            function is_sc(orders: Ordering) : bool
                for RCsc
            
            function ppo(i, j: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect): bool 
                defining whether i --ppo-> j with the ordering and effects


        and that assumptions be present in templated code:

            assume sc_impl is ...;
            telling which SC implementation is used (TrailingFence, LeadingFence, RCsc)

        as well as function parameters:

            assume load_order == ...;
            assume fence_order == ...;
            ...

****************************************************************/




// This builtin boogie function returns const array
function {:builtin "MapConst"} ConstArray<T,U>(U): [T]U;

type StateIndex = int;



datatype Effect {
    // read(a,v,vis) == read at a the value v. vis means whether this read is visible to barriers
    read(addr: int, read_value: int, read_visible: bool),
    write(addr: int, write_value: int),
    update(addr: int, read_value: int, read_visible: bool, write_value: int),
    no_effect()
}


function is_effect(effect: Effect) : bool {
    ! (effect is no_effect)
}
function is_read(effect: Effect) : bool {
    effect is read || effect is update
}

function is_write(effect: Effect) : bool {
    effect is write || effect is update
}

var last_load, last_store: StateIndex;
var step: StateIndex;
var atomic: [StateIndex,StateIndex] bool;
var effects: [StateIndex] Effect;
var ordering: [StateIndex] Ordering;




// No implementation needed
// Using explicit implementations makes it run very slow and it gives no extra information
// The version without implementation creates a generic operation for each case
// NOTE: There is an issue on the boogie repo with regards to this 
function bit_and(x: int, y: int): int;
function bit_or(x: int, y: int): int;
function bit_xor(x: int, y: int): int;

function bit_not(x: int): int;

axiom (forall x: int :: bit_not(bit_not(x)) == x); // double negation on bits
axiom (forall x: int, y: int :: bit_and(x, y) == bit_and(y, x));
axiom (forall x: int, y: int :: bit_or(x, y) == bit_or(y, x));
axiom (forall x: int, y: int :: bit_xor(x, y) == bit_xor(y, x));
axiom (forall x : int :: bit_and(0, x) == 0);

function shift_left(i : int, shift_amount : int) : int;
function shift_right(i : int, shift_amount : int) : int;
axiom (forall x : int :: shift_left(x, 0) == x);
axiom (forall x : int :: shift_right(x, 0) == x);
axiom (forall x : int :: shift_left(0, x) == 0);
axiom (forall x : int :: shift_right(0, x) == 0);

function align_value(address : int, value : int, old_value : int, value_mask: int) : int {
    bit_or(
            shift_left(
                bit_and(value, value_mask), 
                shift_left(bit_and(address, 3), 2)),
        bit_and(old_value, -value_mask-1))
}

function extract_value(address : int, value : int) : int {
    shift_right(value, 
        shift_left(bit_and(address, 3), 3))
}



axiom (forall i, m : int :: bit_and(i - bit_and(i,-4),3) == bit_and(i, 3));

axiom (forall i : int :: shift_left(i, 3) == i * 8);

axiom (forall i : int :: shift_left(shift_right(i, 1), 1) == bit_and(i, -2));
axiom (forall i : int :: shift_left(shift_right(i, 2), 2) == bit_and(i, -4));
axiom (forall i : int :: shift_left(shift_right(i, 3), 3) == bit_and(i, -8));




const max: [int, int] int;
axiom max == (lambda x, y: int ::
    if x > y then x else y
);


const min: [int, int] int;
axiom min == (lambda x, y: int ::
    if x < y then x else y
);


const add: [int, int] int;
axiom add == (lambda x, y: int :: x + y);

const sub: [int, int] int;
axiom sub == (lambda x, y: int :: x - y);

const and: [int, int] int;
axiom and == (lambda x, y: int :: bit_and(x, y));

const or: [int, int] int;
axiom or == (lambda x, y: int :: bit_or(x, y));

const xor: [int, int] int;
axiom xor == (lambda x, y: int :: bit_xor(x, y));

function i2b(i:int) returns (bool) { i != 0 }
function b2i(b:bool) returns (int) { if b then 1 else 0 }


type OrderRelation = [StateIndex, StateIndex, StateIndex, [StateIndex] Ordering, [StateIndex] Effect] bool;

const order_rlx: OrderRelation;
axiom order_rlx == (lambda i, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
    true
);

const order_acq: OrderRelation;
axiom order_acq == (lambda load, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
    (forall i: StateIndex ::
        (i >= exit) && is_effect(effects[i]) ==> ppo(load, i, ordering, effects)
    )
);

const order_rel: OrderRelation;
axiom order_rel == (lambda store, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
    (forall i: StateIndex ::
        (i < entry) && is_effect(effects[i]) ==> ppo(i, store, ordering, effects)
    )
);

datatype SCImplementation { LeadingFence(), TrailingFence(), RCsc() }
const sc_impl: SCImplementation;

const order_acq_sc: OrderRelation;
axiom order_acq_sc == (lambda load, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
    order_acq[load, entry, exit, ordering, effects] &&
    if sc_impl is LeadingFence then
        // ordered with all previous operations
        (forall i: StateIndex ::
            (i < entry) && is_effect(effects[i]) ==> ppo(i, load, ordering, effects)
        )
    else if sc_impl is TrailingFence then
        true
    else if sc_impl is RCsc then
        // ordered with all previous SC operations
        is_sc(ordering[load]) &&
        (forall i: StateIndex ::
            (i < entry) && is_effect(effects[i]) ==> is_sc(ordering[i]) ==> ppo(i, load, ordering, effects)
        )
    else false
);

const order_rel_sc: OrderRelation;
axiom order_rel_sc == (lambda store, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
    order_rel[store, entry, exit, ordering, effects] &&
    if sc_impl is LeadingFence then
        true
    else if sc_impl is TrailingFence then
        // ordered with all later operations
        (forall i: StateIndex ::
            (i >= exit) && is_effect(effects[i]) ==> ppo(store, i, ordering, effects)
        )
    else if sc_impl is RCsc then
        // ordered with all later SC operations
        is_sc(ordering[store]) &&
        (forall i: StateIndex ::
            (i >= exit) && is_effect(effects[i]) ==> is_sc(ordering[i]) ==> ppo(store, i, ordering, effects)
        )
    else false
);


const order_fence_acq: OrderRelation;
axiom order_fence_acq == (lambda fence, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
        (forall i, j: StateIndex ::
            (i < entry) && (j >= exit) && (is_read(effects[i]) && effects[i]->read_visible) && is_effect(effects[j])
                ==> ppo(i, j, ordering, effects))
);

const order_fence_rel: OrderRelation;
axiom order_fence_rel == (lambda fence, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
        (forall i, j: StateIndex ::
            (i < entry) && (j >= exit) && is_effect(effects[i]) && is_write(effects[j])
                ==> ppo(i, j, ordering, effects))
);
const order_fence_sc: OrderRelation;
axiom order_fence_sc == (lambda fence, entry, exit: StateIndex, ordering: [StateIndex] Ordering, effects: [StateIndex] Effect ::
        (forall i, j: StateIndex ::
            (i < entry) && (j >= exit) && is_effect(effects[i]) && is_effect(effects[j])
                ==> ppo(i, j, ordering, effects))
);



function no_writes(from, to, write: StateIndex): bool {
    (write < from || to <= write)
}

function valid_mask(val, mask : int) : bool {
    val == bit_and(val, mask)
}

type RMWOp = [int, int, int] int;

const cmpset, add_op, sub_op, set_op, min_op, max_op, dec_op, inc_op, ret_old: RMWOp;

axiom cmpset == (lambda x, y1, y2 : int :: if x == y1 then y2 else x);
axiom add_op == (lambda x, y, _: int :: x + y);
axiom sub_op == (lambda x, y, _: int :: x - y);
axiom set_op == (lambda x, y, _: int :: y);
axiom min_op == (lambda x, y, _: int :: if x < y then x else y);
axiom max_op == (lambda x, y, _: int :: if x < y then y else x);
axiom dec_op == (lambda x, _1, _2: int :: x-1);
axiom inc_op == (lambda x, _1, _2: int :: x+1);

axiom ret_old == (lambda x, _1, _2 : int :: x);

const bit8, bit16 : [RMWOp] RMWOp;
axiom bit8 == (lambda op : RMWOp :: (lambda x, y1, y2 : int :: op[x, bit_and(y1,255), bit_and(y2, 255)]));
axiom bit16 == (lambda op : RMWOp :: (lambda x, y1, y2 : int :: op[x, bit_and(y1,65535), bit_and(y2, 65535)]));

type AwaitOp = [int, int] bool;

const eq, neq, lt, le, gt, ge: AwaitOp;

axiom eq  == (lambda x, y: int :: x == y);
axiom neq == (lambda x, y: int :: x != y);
axiom lt  == (lambda x, y: int :: x <  y);
axiom le  == (lambda x, y: int :: x <= y);
axiom gt  == (lambda x, y: int :: x >  y);
axiom ge  == (lambda x, y: int :: x >= y);