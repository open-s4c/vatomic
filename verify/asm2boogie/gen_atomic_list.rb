base_raw = %{
    read
    read_acq
    read_rlx
    write
    write_rel
    write_rlx
    cmpxchg
    cmpxchg_acq
    cmpxchg_rel
    cmpxchg_rlx
    xchg
    xchg_acq
    xchg_rel
    xchg_rel
    fence
    fence_acq
    fence_rel
    fence_rlx
}.split("\n").map { |s| s.strip }.filter { |s| s != "" }

ops = %{
    cmpxchg
    add 
    sub 
    xchg
    set 
    dec 
    inc 
    min 
    max 
}.split("\n").map { |s| s.strip }.filter { |s| s != "" }

conds = %{
    eq
    neq
    lt
    le
    gt
    ge
}.split("\n").map { |s| s.strip }.filter { |s| s != "" }

modes = %{
    _acq
    _rel
    _rlx
}.split("\n").map { |s| s.strip }

base_raw.each { |b| puts b }
ops.each { |op|
    modes.each { |mode| 
        puts "#{op}#{mode}"
        puts "get_#{op}#{mode}"
        puts "#{op}_get#{mode}"
    }
}

conds.each { |cond|
    modes.each { |mode| 
        puts "await_#{cond}#{mode}"
    }

    ops.each { |op|
        modes.each { |mode|
            puts "await_#{cond}_#{op}#{mode}"
        }
    }
}