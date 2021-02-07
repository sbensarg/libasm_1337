;            global _ft_strlen
;            section .text

;_ft_strlen:
;            push rax
;            mov  rbx, 0
;_loop:
;            inc rax
;            inc rbx
 ;           mov cl, [rax]
 ;           cmp cl, 0
 ;           jne _loop
;            ret

global _ft_strlen

_ft_strlen:
    mov rax , 0
loop:
    cmp byte  [rdi +rax] ,0
    je exit
    inc rax
    jmp loop

exit:
    ret
   

