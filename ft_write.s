extern  ___error
global _ft_write

_ft_write:

        mov rax, 0x02000004
        syscall
        jc setnbr
        ret
setnbr:
        push rax
        call ___error
        mov rcx, rax
        pop rax
        mov [rcx], rax
        mov rax, -1
        ret