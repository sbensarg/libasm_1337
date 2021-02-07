extern _ft_strlen
extern _ft_strcpy
extern _malloc
extern ___error
global _ft_strdup
_ft_strdup:
            push rdi
            call _ft_strlen
            mov rdi, rax
            call _malloc
            ; if malloc returned NULL, je error
            cmp rax, 0
            je exit
            mov rdi, rax
            pop rsi
            call _ft_strcpy
            ret
exit:
            push rax
            call ___error
            mov rcx, rax
            pop rax
            mov [rcx], rax
            mov rax, -1
            ret
