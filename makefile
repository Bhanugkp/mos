all:
	nasm -f bin -o b.bin b.asm
	qemu-system-i386 b.bin --nographic
