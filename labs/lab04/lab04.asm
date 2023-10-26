; lab04.asm
SECTION .data
    lab04:      DB 'Armen Isakhanyan',10
    
    lab04Len:   EQU $-lab04
SECTION .text
    GLOBAL _start
    
_start:
    mov eax,4
    mov ebx,1
    mov ecx,lab04
    mov edx,lab04Len
    int 80h
    
    mov eax,1
    mov ebx,0
    int 80h
