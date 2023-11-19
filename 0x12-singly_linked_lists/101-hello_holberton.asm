section .data
    hello_message db "Hello, Holberton", 0
    format db "%s", 0

section .text
    global main
    extern printf

main:
    push rdi             ; Preserve the value of rdi
    mov rdi, format      ; Format specifier
    mov rsi, hello_message ; Message to be printed
    call printf          ; Call printf
    pop rdi              ; Restore the value of rdi
    ret
