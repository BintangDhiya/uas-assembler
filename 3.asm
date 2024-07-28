section .data
    num1 db 10
    num2 db 20
    result db 0

section .text
    global _start

_start:
    ; Push values onto stack
    mov al, [num1]
    push ax
    mov al, [num2]
    push ax

    ; Pop values from stack
    pop ax
    mov [result], al
    pop ax
    mov [result], al

    ; Exit
    mov eax, 1
    int 0x80
