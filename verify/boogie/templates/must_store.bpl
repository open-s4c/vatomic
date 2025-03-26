var #registers: int;

procedure must_store()
    modifies step, effects, ordering, atomic, last_load, last_store, #state, #registers;
    ensures {:msg "store happens within function bounds"} (
        old(step) <= last_store && last_store < step
    );
    ensures {:msg "produces write effect"}
        effects[last_store] == write(old(#address), old(#input1));
{
    #implementation
}

