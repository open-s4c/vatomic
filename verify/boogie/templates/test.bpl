/// this example covers atomic_add (non-get version)


var a0, a1, a2, x5, x6 : int;

procedure read(ret : RMWOp, load_order: OrderRelation)
    modifies step, effects, ordering, atomic, last_load, last_store, local_monitor, monitor_exclusive, a0, a1, a2, x5, x6;
    ensures {:msg "load happens within function bounds"} (
        old(step) <= last_load && last_load < step
    );
    ensures {:msg "load order"}
        load_order[last_load, old(step), step, ordering, effects];
    ensures {:msg "correct output"} (
            exists v : int :: effects[last_load][read(old(a0),v,true)] &&
                a0 == ret[v, old(a1), old(a2)]
        );
{
    // assumption about parameters
    assume (load_order == order_rlx);
    assume (ret == ret_old);
    call x5 := execute(mov(a0));
    loop: 
        // two loop invariants, used in every loop
        assert step >= old(step); 
        assert (forall i : int, e : Effect :: old(step) <= i && i < step && effects[i][e] ==> ! (e is write));

        call a0 := execute(lr(false, false, x5));
        call x6 := execute(add(a0, a1));
        call x6 := execute(sc(false, false, x6, x5));
        if (x6 != 0) { goto loop; }
}



procedure rmw (op: RMWOp)
    modifies step, effects, ordering, atomic, last_load, last_store, local_monitor, monitor_exclusive, a0, a1, a2, x5, x6;

    
    ensures {:msg "if no write happened, the value from memory is already the result of operation"} (
        var address, input1, input2 := old(a0), old(a1), old(a2);
        no_writes(old(step), step, last_store) ==>
            (exists a,v : int, vis : bool :: effects[last_load][read(a,v,vis)] && v == op[v, input1, input2])
    );
    
    ensures {:msg "atomicity"}
        !no_writes(old(step), step, last_store) ==> (
            atomic[last_load, last_store]
        );
    ensures {:msg "store produces write to correct address with correct value"}
        !no_writes(old(step), step, last_store) ==> (
            var address, input1, input2 := old(a0), old(a1), old(a2);
            (exists a,v : int, vis : bool :: effects[last_load][read(a,v,vis)]
                && effects[last_store][write(address, op[v, input1, input2])])
        );
{
    // assumption about parameters
    assume (op == add_op);

    call x5 := execute(mov(a0));
    loop: 
        // two loop invariants, used in every loop
        assert step >= old(step); 
        assert (forall i : int, e : Effect :: old(step) <= i && i < step && effects[i][e] ==> ! (e is write));

        call a0 := execute(lr(false, false, x5));
        call x6 := execute(add(a0, a1));
        call x6 := execute(sc(false, false, x6, x5));
        if (x6 != 0) { goto loop; }
}


procedure write(store_order: OrderRelation)
    modifies step, effects, ordering, atomic, last_load, last_store, local_monitor, monitor_exclusive, a0, a1, a2, x5, x6;
    ensures {:msg "no other writes"}
        (forall i : StateIndex ::
            old(step) <= i && i < step && (exists e : Effect :: effects[i][e] && (e is write))
                ==> i == last_store);
    ensures {:msg "store ordering"}
        !no_writes(old(step), step, last_store) ==> (
            store_order[last_store, old(step), step, ordering, effects]
        );
    
{
    // assumption about parameters
    assume (store_order == order_rlx);

    call x5 := execute(mov(a0));
    loop: 
        // two loop invariants, used in every loop
        assert step >= old(step); 
        assert (forall i : int, e : Effect :: old(step) <= i && i < step && effects[i][e] ==> ! (e is write));

        call a0 := execute(lr(false, false, x5));
        call x6 := execute(add(a0, a1));
        call x6 := execute(sc(false, false, x6, x5));
        if (x6 != 0) { goto loop; }
}

