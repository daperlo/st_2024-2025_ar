%include 'in_out.asm'
SECTION .data
msg db "Результат: ",0
SECTION .bss
b: RESB 80
SECTION .text
global _start
_start:
pop ecx
pop edx
sub ecx,1
mov esi,5
next:
cmp ecx,0h
jz _end
pop eax
call atoi
imul eax,esi
add eax,10
add [b],eax
loop next
_end:
mov eax,msg
call sprint
mov eax,[b]
call iprintLF
call quit
