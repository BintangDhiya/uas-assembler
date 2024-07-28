section .data
    num1 db 10
    num2 db 5
    result db 0

section .text
    global _start

_start:
    ; Penjumlahan
    mov al, [num1]
    add al, [num2]
    mov [result], al

    ; Perkalian
    mov al, [num1]
    mov bl, [num2]
    mul bl
    mov [result], al

    ; Pengurangan
    mov al, [num1]
    sub al, [num2]
    mov [result], al

    ; Pembagian
    mov al, [num1]
    mov bl, [num2]
    xor ah, ah    ; Clear AH for division
    div bl
    mov [result], al

    ; Exit
    mov eax, 1
    int 0x80
