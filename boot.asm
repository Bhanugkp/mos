[org 0x7c00]

start:
	mov ah, 0x0e
	mov si, myval

print:
	mov al, [si]
	int 0x10

	inc si
	cmp al, 0
	jne print
	

	jmp $

	myval: db "MOS 1.0 A MODERN OPERATING SYSTEM", 0

	times 510-($-$$) db 0
	dw 0xAA55

