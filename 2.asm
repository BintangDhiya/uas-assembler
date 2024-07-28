section .data
    counter db 10

section .text
    global _start

_start:
    mov al, [counter]

loop_start:
    dec al
    cmp al, 0
    jne loop_start

    ; Exit
    mov eax, 1
    int 0x80
