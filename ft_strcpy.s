extern _ft_strlen
global _ft_strcpy

_ft_strcpy:
        mov rcx ,rdi
        mov rdi , rsi 
        call _ft_strlen
        mov rbx , rax
        mov rax , rcx
        mov rdx , 0
loop:
        cmp rdx, rbx
        je exit
        mov cl, byte [rsi + rdx]
        mov byte [rax + rdx], cl
        inc rdx
        jmp loop
exit :
        mov byte [rax + rdx], 0
        ret  