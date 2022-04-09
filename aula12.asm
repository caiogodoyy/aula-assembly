.data
	text: .asciiz "Número final: "
.text
	addi $t0, $0, 0
	addi $v0, $0, 5
	syscall
	add $t1, $0, $v0
	while:
		bge $t0, $t1, exit
		addi $v0, $0, 1
		add $a0, $0, $t0
		syscall
		addi $t0, $t0, 1
		j while
	exit:
		addi $v0, $0, 4
		la $a0, text
		syscall
		addi $v0, $0, 1
		add $a0, $0, $t0
		syscall