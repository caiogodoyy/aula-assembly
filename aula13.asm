.data
	pedirIdade: .asciiz "Digite sua idade: "
	maiorIdade: .asciiz "� de maior"
	menorIdade: .asciiz "� de menor"
.text
	.main:
		la $a0, pedirIdade
		jal printString
		jal inputInt
		addi $t0, $0, 18
		bge $v0, $t0, deMaior
		j deMenor
		
	deMaior:
		la $a0, maiorIdade
		jal printString
		j exit
	deMenor:
		la $a0, menorIdade
		jal printString
		j exit

	printString:
		addi $v0, $0, 4
		syscall
		jr $ra
	inputInt:
		addi $v0, $0, 5
		syscall
		jr $ra
	exit:
		addi $v0, $0, 10
		syscall