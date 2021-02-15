extern _ft_strlen
extern _ft_strcpy
extern _malloc
extern ___error
global _ft_strdup
_ft_strdup:
            push rdi
            call _ft_strlen
            mov rdi, rax
            add rax, 1
            call _malloc
            cmp rax, 0
            je exit
            mov rdi, rax
            pop rsi
            call _ft_strcpy
            ret
exit:
            call ___error
            mov rax, 12
            mov [rax], rcx
            mov rax, 0
            ret
