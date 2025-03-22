var #registers: int;

procedure await(cond : AwaitOp)
    modifies step, effects, ordering, atomic, last_load, last_store, #state, #registers;

    ensures {:msg "satisfy await condition"}
        cond[#output, old(#input1)];
{
    #implementation
}
