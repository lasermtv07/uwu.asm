;TODO: fix weird character
SECTION .text
global _start
_start:
	pop ecx
	;WTF?!
	cmp ecx, 1
	jpe noargs
	inc ecx
	mov [argc],ecx
	pop ecx
	call allargs
	call end
noargs:
	mov eax,3
	mov ebx,0
	mov ecx,txt
	mov edx,10240
	int 0x80
	mov ecx,txt
	call uwuify
	jmp end
allargs:
	mov eax,[argc]
	dec eax
	mov [argc],eax
	pop ecx
	cmp eax,0
	jne calluwu
	je end
	ret ;
calluwu:
	push ecx
	mov eax,4
	mov ebx,1
	mov edx,1
	mov ecx,space
	int 0x80
	pop ecx
	call uwuify
	jmp allargs
uwuify:
	;idk why, but it works
	cmp byte [ecx],0xd2
	je empty
	cmp byte [ecx],0xe8
	je empty
	cmp byte [ecx],114
	je r2w
	cmp byte [ecx],108
	je l2w
	cmp byte [ecx],82
	je r2w
	cmp byte [ecx],76
	je l2w
	mov eax,4
	mov ebx,1
	mov edx,1
	int 0x80
	inc ecx
	cmp byte [ecx-1],0x00
	jne uwuify
	je ret
	cmp byte [ecx],0x0
	jne uwuify
	je ret

	ret ;
r2w:
	add byte [ecx],5
	mov eax,4
	mov ebx,1
	mov edx,1
	int 0x80
	add ecx,1
	jmp uwuify
l2w:
	add byte [ecx],11
	mov eax,4
	mov ebx,1
	mov edx,1
	int 0x80
	add ecx,1
	jmp uwuify
empty:
	inc ecx
	jmp uwuify
ret:
	ret ;
end:
	mov eax,4
	mov ebx,1
	mov edx,1
	mov ecx,space+1
	int 0x80
	mov eax,0
	mov eax,1
	mov ebx,0
	int 0x80

SECTION .bss
argc resb 3
txt resb 10240
SECTION .data
space db 0x20,10
