%include 'in_out.asm'
SECTION .data
msg db "Введите х: ",0
result: DB '5(2+x)=',0
SECTION .bss
x: RESB 80
res: RESB 80
SECTION .text
global _start
_start:
mov eax,msg
call sprint
mov ecx,x
mov edx,80
call sread
mov eax,x
call atoi
call _calcul
mov eax,result
call sprint
mov eax,[res]
call iprintLF
call quit
_calcul:
add eax,2
mov ebx,5
mul ebx
mov [res],eax
ret
