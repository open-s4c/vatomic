var #registers: int;

/*
    ret         - computation of return value (either ret_old, for normal read/rmw, or the same as op, for ..._get_... rmw)
    load_order  - ordering of load
*/

procedure read(ret : RMWOp, load_order: OrderRelation)
    modifies step, effects, ordering, atomic, local_monitor, monitor_exclusive, flags, event_register, last_load, last_store, #registers;
    ensures {:msg "load happens within function bounds"}
        old(step) <= last_load && last_load < step;
    ensures {:msg "load order"}
        load_order[last_load, old(step), step, ordering, effects];
    ensures {:msg "correct output"}
        (exists v : int :: effects[last_load] == read(old(#address),v, true) &&
                #output == ret[v, old(#input1), old(#input2)]);

{
    #implementation
}