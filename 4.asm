section .data
    num1 db 10
    num2 db 20
    result db 0

section .text
    global _start

_start:
    mov al, [num1]
    cmp al, [num2]
    jg num1_greater
    jl num2_greater

equal:
    mov [result], 0
    jmp end

num1_greater:
    mov [result], 1
    jmp end

num2_greater:
    mov [result], 2
    jmp end

end:
    ; Exit
    mov eax, 1
    int 0x80
