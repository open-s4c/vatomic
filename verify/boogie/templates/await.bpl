var #registers: int;

procedure await(cond : AwaitOp)
    modifies step, last_load, last_store, #state, #registers;

    ensures {:msg "satisfy await condition"}
        cond[effects[last_load]->value, old(#input1)];
{
    #implementation
}
