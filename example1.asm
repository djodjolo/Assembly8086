;Read char and print until char is ENTER
;Program koji ocitava znakove sa tastature 
;i salje ih na stampac sve dok se ne pritisne enter

KOD SEGMENT
ASSUME CS:KOD

PETLJA:
MOV ah,07h ;broj 7 ucitava znak
INT 21h    ;bez ostavljanja slova na ekranu

CMP al,13  ;ako je 13 to je ascii ENTER
JE KRAJ    ;pa izlazi iz petlje

MOV dl,al
MOV ah,02h ;stampa iz DL-a
INT 21h

JMP PETLJA

KRAJ:
mov ah,4ch ;povratak u dos
int 21h

KOD ENDS
