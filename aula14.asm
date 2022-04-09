.data
	array:
		.align 2
		.space 40
	pedirNum: .asciiz "Digite um número: "
	quebraLinha: .asciiz "\n"

.text
	.main:
		addi $t0, $0, 0
		addi $t1, $0, 40
		while1:
			beq $t1, $t0, end1
			la $a0, pedirNum
			jal printString
			jal inputInt
			sw $v0, array($t0)
			addi $t0, $t0, 4
			j while1
		end1:
		addi $t0, $0, 0
		addi $t1, $0, 40
		while2:
			beq $t1, $t0, end2
			lw $a0, array($t0)
			jal printInt
			la $a0, quebraLinha
			jal printString
			addi $t0, $t0, 4
			j while2
		end2:
		j exit
	
	printString:
		addi $v0, $0, 4
		syscall
		jr $ra
	printInt:
		addi $v0, $0, 1
		syscall
		jr $ra
	inputInt:
		addi $v0, $0, 5
		syscall
		jr $ra
	exit:
		addi $v0, $0, 10
		syscall