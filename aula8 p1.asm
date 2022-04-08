.text
	addi $v0, $0, 5
	syscall
	
	add $a0, $0, $v0
	addi $v0, $0, 1
	syscall