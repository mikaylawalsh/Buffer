
lost.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <exploit>:
   0:	54                   	push   %rsp
   1:	55                   	push   %rbp
   2:	48 89 e5             	mov    %rsp,%rbp
   5:	48 83 ec 20          	sub    $0x20,%rsp
   9:	48 c7 c0 ed 24 25 62 	mov    $0x622524ed,%rax
  10:	5c                   	pop    %rsp
  11:	5d                   	pop    %rbp
  12:	c3                   	retq   
