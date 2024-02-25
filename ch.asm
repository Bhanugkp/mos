[org 7c00H]
start:
	mov ah, 00H
	int 16H

	mov ah, 0eH
	int 10H

	times 510-($-$$) db 0
	db 55AAH
