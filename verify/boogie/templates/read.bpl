var #registers: int;

/*
    ret         - computation of return value (either ret_old, for normal read/rmw, or the same as op, for ..._get_... rmw)
    load_order  - ordering of load
*/

procedure read(ret : RMWOp, load_order: OrderRelation)
    modifies step, last_load, last_store, #state, #registers;
    ensures {:msg "load happens within function bounds"}
        old(step) <= last_load && last_load < step;
    ensures {:msg "load order"}
        load_order[last_load, old(step), step, ordering, effects];
    ensures {:msg "correct output"}
        (var returned := ret[effects[last_load]->read_value, old(a1), old(a2)];
        is_read(effects[last_load]) && effects[last_load]->read_visible
            && (#output == extract_value(old(a0) - effects[last_load]->addr, returned, #value_mask)));

{
    #implementation
}