global _ft_strcmp
            mov r12 , 0 
_ft_strcmp:
            mov cl, byte [rdi + r12]
            mov bl, byte [rsi + r12]
            cmp cl, 0
            jne lmao
            movzx rax, cl
            movzx rcx, bl
            sub rax, rcx
            ret
lmao:
            cmp cl, bl
            jne nequal
            inc r12
            jmp _ft_strcmp
nequal:  
            movzx rax, cl
            movzx rcx, bl
            sub rax, rcx
            ret
