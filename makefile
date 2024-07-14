main:
	nasm -f elf uwu.asm -o /tmp/aaa.obj
	ld /tmp/aaa.obj -o uwu -m elf_i386
