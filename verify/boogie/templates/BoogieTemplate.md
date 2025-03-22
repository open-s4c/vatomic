# Boogie Template
## Overview

Each .bpl of the following is a template describing some aspects of correctness of different atomics.
For each atomic, one or more of these templates need to be used to fully specify the correctness.
The templates are:

- read_only -- describes atomics that never write, such as read, await (non-RMW)
- read -- describes atomics that perform a read, such as RMW, read, await, await-RMW
- write -- describes write atomics
- await -- describes await, await-RMW atomics
- rmw -- describes atomics performing a read-modify-write operation, such as RMW and await-RMW

## Templating

Each template uses one or more of the following parameters, written as `#NAME`:

- #registers -- comma seperated sequence of identifiers specifying all registers used in the function, such as `a0, a1, a2, x5, x6`
- #address -- identifier specifiying register that originally holds the address, such as `a0`
- #input1 -- identifier for register holding first function argument, e.g., for `write(a, v)` the value of `v`, or for `cmpxchg(a, e, v)` the value of `e`. Could be `a1`
- #input2 -- second function argument. Could be `a2`.
- #output -- register holding the output value at the end of the function, e.g., `a0`
- #implementation -- body of the function, including: assumes for all procedure parameters, code, 2 basic loop invariants
- #state -- comma seperated list of identifiers for all additional state introduced by the architecture, e.g., `local_monitor, monitor_exclusive`

## Example

For an example, see `test.bpl` which contains instantiation of two templates (read, rmw) for one RMW atomic (add_set).

## Templates

List of templates and their functions:

| template   | write number | return value | store order | load order |
-----------------------------------------------------------------------
| read_only  | 0            |   output     |  -          | -          |
| read       | -            |   ret        |  -          | yes        |
| write      | <=1          |   -          |  yes        | -          |
| await      | -            |   await cond |  -          | -          |
| must_store |  1 (+value)  |   -          |  yes        | -          |
| rmw        |  (+op)       |   -          |  yes        | -          |

List of templates used by each atomic:

| template   | read | write | RMW | await | await RMW |
-------------------------------------------------------
| read_only  | x    |       |     | x     |           |
| read       | x    |       |  x  | x     | x         |
| write      |      | x     |  x  |       | x         |
| await      |      |       |     | x     | x         |
| must_store |      | x     |     |       |           |
| rmw        |      |       |  x  |       | x         |


