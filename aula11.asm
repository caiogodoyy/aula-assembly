.data
	par: .asciiz "Número par"
	impar: .asciiz "Número impar"

.text
	addi $v0, $0, 5
	syscall
	
	addi $t0, $0, 2
	div $v0, $t0
	mfhi $t1
	
	beq $t1, $0, numPar
	
	addi $v0, $0, 4
	la $a0, impar
	syscall
	
	addi $v0, $0, 10
	syscall
	
	numPar:
		addi $v0, $0, 4
		la $a0, par
		syscall
		