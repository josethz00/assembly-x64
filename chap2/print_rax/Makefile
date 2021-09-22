exec = print_rax.out
objects = print_rax.o
sources = $(wildcard src/**/*.asm) $(wildcard src/**/**/*.asm) $(wildcard src/*.asm) $(wildcard *.asm)
flags = -felf64

run: link
		./$(exec)

link: mount
	ld -o $(exec) $(objects)

mount:
	nasm $(flags) $(sources) -o $(objects)

clean:
	-rm *.out
	-rm *.o
	-rm *.a
	-rm src/*.o
	-rm src/**/*.o
	-rm *.out