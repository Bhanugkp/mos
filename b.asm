[org 0x7c00]
start:
	;clear screen
	;mov ah, 0x00
	;mov al, 0x03
	;int 0x10

	;print some text
	mov ah, 0x0e
	mov al, 'B'
	int 0x10
	
	mov ah, 0x00
	int 0x16

	cmp al, 'r'
	je start


	jmp $
	
	times 510-($-$$) db 0
	db 0x55,0xAA
