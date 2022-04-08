.data
	nome: .space 10

.text
	addi $v0, $0, 8
	la $a0, nome
	la $a1, 10
	syscall
	
	addi $v0, $0, 4
	syscall