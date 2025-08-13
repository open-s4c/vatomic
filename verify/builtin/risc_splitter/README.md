# Risc Splitter
Usage:
```
risc_splitter -i <input> -o <output>
```

Motivation: risc-v gcc for version <= 11 may output lines with multiple instructions like for example:
```
fence iorw,ow; 1: lr.d.aq a5,0(a4); bne a5,a0,1f; 1:
```

our asm2boogie parser expects an instruction per line, and it is easier to keep it that way.

this project splits the example into this:
```
    fence iorw,ow
    1: 
    lr.d.aq a5,0(a4)
    bne a5,a0,1f
    1:
```
