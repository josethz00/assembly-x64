section .data                     
  text1: db  "What is your name? "
  text2: db  "Hello, "

section .bss ; section bss can be used to reserve data
  name: resb 16 ; reserve 16 bytes for name

section .text
  global _start

_start:   
  call _print_text_1
  call _get_name
  call _print_text_2
  call _print_name

	mov rax, 60          ; 'exit' syscall number
  xor rdi, rdi
  syscall

_get_name:
  mov rax, 0  ; 0 for 'read' syscall number
  mov rdi, 0 ; 0 for stdout (this line argument is ignored/optional)
  mov rsi, name  ; string to be printed ny 'sys_read' 
  mov rdx, 16  ; number of bytes to be read
  syscall
  ret

_print_text_1:
  mov rax, 1
  mov rdi, 1
  mov rsi, text1
  mov rdx, 19
  syscall
  ret

_print_text_2:
  mov rax, 1
  mov rdi, 1
  mov rsi, text2
  mov rdx, 7
  syscall
  ret

_print_name:
  mov rax, 1
  mov rdi, 1
  mov rsi, name
  mov rdx, 16
  syscall
  ret