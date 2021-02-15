global _ft_strcmp

_ft_strcmp:
            mov r12 , 0
            jmp fnct
fnct:
            mov cl, byte [rdi + r12]
            mov bl, byte [rsi + r12]
            cmp cl, 0
            jne lmao
            jmp nequal
lmao: 
            cmp cl, bl
            jne nequal
            inc r12
            jmp fnct
nequal:  
            movzx rax, cl
            movzx rcx, bl
            sub rax, rcx
            ret
