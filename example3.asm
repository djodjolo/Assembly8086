;First add ASCII values '7' to '8' and print result
;Second multiply ASCCI values '3' and '5' and print result

KOD SEGMENT

;a)adding ascii 
mov al,'7'
mov bl,'8'
add al,bl
aaa

mov bl,al

mov dl,ah
add dl,30h
mov ah,2h
int 21h

mov dl,bl
add dl,30h
mov ah,2h
int 21h

;b)multiply ascii 

mov al,'3'
sub al,30h
mov bl,'5'
sub bl,30h
mul bl
aam
mov bl,al

mov dl,ah
add dl,30h
mov ah,2h
int 21h

mov dl,bl
add dl,30h
mov ah,2h
int 21h

KOD ENDS
