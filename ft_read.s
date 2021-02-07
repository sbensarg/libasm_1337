extern ___error
global _ft_read

_ft_read:

        mov rax, 0x02000003
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

