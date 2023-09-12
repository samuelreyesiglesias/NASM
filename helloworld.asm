section .data          ; Sección de datos
    hello db 'Hello, World!',0  ; Definición de la cadena de caracteres 'Hello, World!' (con el byte nulo final)

section .text          ; Sección de código
    global _start      ; Punto de entrada del programa

_start:               ; Etiqueta _start
    ; Llamada al sistema para imprimir la cadena
    mov eax, 4        ; Código de la syscall para sys_write (imprimir)
    mov ebx, 1        ; Descriptor de archivo stdout (1 para la salida estándar)
    mov ecx, hello    ; Dirección de la cadena que se imprimirá
    mov edx, 13       ; Longitud de la cadena a imprimir (13 caracteres)
    int 0x80          ; Interrupción 80h para hacer la llamada al sistema

    ; Llamada al sistema para salir del programa
    mov eax, 1        ; Código de la syscall para sys_exit (salir)
    int 0x80          ; Interrupción 80h para hacer la llamada al sistema
