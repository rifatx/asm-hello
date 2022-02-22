    global  _start
    section .text

_start:
    mov rdi, 1   ; stdout
    mov rsi, msg ; text
    mov rdx, len ; len
    mov rax, 1   ; sys_write
    syscall

    mov rdi, 0   ; exit code
    mov rax, 60  ; exit
    syscall

msg: db "Hello, World!!!!",10
len EQU $ - msg 
