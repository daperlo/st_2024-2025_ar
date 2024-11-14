%include 'in_out.asm'

SECTION .data
msg : DB 'Введите X',0
finmsg : DB 'Ответ: ',0

SECTION .bss
x: RESB 80
rez: RESB 80

SECTION .start
GLOBAL _start
_start:

mov eax,msg
call sprintLF

mov ecx,x
mov edx,80
call sread
mov eax,x
call atoi

add eax,18
mov ebx,5
mul ebx
xor ebx,ebx
add eax, -28
mov [rez],eax

mov eax,finmsg
call sprint
mov eax,[rez]
call iprintLF

call quit
