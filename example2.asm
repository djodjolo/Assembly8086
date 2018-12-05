;Upisati recenicu i prebrojati koliko ima slova 
;Input a sentence and count their chars
KOD SEGMENT
ASSUME CS:KOD

MOV CL,0

PETLJA:
MOV ah,01h ;broj 2 ucitava znak i
INT 21h    ;ostavlja ga na ekranu
CMP al,'@'
JE KRAJ

CMP AL,65
JB BROJ

CMP AL,122
JA PETLJA

INC CL
JMP PETLJA

BROJ:
CMP AL,30H
JB PETLJA

CMP AL,39H
JA PETLJA

INC CL
JMP PETLJA

KRAJ:
mov al,cl
mov ah,0
AAA
mov bl,al

mov dl,ah
add dl,30h
mov ah,02h
int 21h

mov dl,bl
add dl,30h
mov ah,02h
int 21h

MOV AH,4Ch
INT 21h

KOD ENDS
