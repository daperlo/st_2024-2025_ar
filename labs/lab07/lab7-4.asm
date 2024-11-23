%include 'in_out.asm'
section .data
    msg1: db 'Введите X: ',0h
    msg2: db 'Введите A: ',0h
    msg3: db 'Ответ: ',0h
    c: dd '2'
section .bss
    x: resb 80
    a: resb 80
    res: resb 80
section .text
    global _start
_start:
    mov eax,msg1
    call sprint
    mov ecx,x
    mov edx,80
    call sread
    mov eax,x
    call atoi
    mov [x],eax
    mov eax,msg2
    call sprint
    mov ecx,a
    mov edx,80
    call sread
    mov eax,a
    call atoi
    mov [a],eax
    mov eax, [x]
    mov ebx,2
    cmp eax,ebx
    jg check_x
    mov eax,[a]
    mov ebx,3
    mul ebx
    mov [res],eax
    jmp fin
check_x:
    mov ecx,[x]
    add ecx,-2
    mov [res],ecx
    jmp fin
fin:
    mov eax,msg3
    call sprint
    mov eax,[res]
    call iprintLF
    call quit
