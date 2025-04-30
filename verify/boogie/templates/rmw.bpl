var #registers: int;

/*
    op          - operation to be performed
*/

procedure rmw (op: RMWOp)
    modifies step, last_load, last_store, #state, #registers;
    
    ensures {:msg "if no write happened, the value from memory is already the result of operation"} (
        var address, input1, input2 := old(#address), old(#input1), old(#input2);
        no_writes(old(step), step, last_store) ==>
            (exists a,v : int, vis : bool :: effects[last_load] == read(a,v,vis) && v == op[v, input1, input2])
        );
    ensures {:msg "atomicity"}
        !no_writes(old(step), step, last_store) ==> (
            atomic[last_load, last_store]
        );
    ensures {:msg "store produces write to correct address with correct value"}
        !no_writes(old(step), step, last_store) ==> (
            var address, input1, input2 := old(#address), old(#input1), old(#input2);
            (is_write(effects[last_store])
                && effects[last_store]->addr == address
                && effects[last_store]->write_value == op[effects[last_load]->read_value, input1, input2])
        );
{
    #implementation
}