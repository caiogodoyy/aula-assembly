.data
	zero: .float 0.0

.text
	addi $v0, $0, 6
	syscall
	
	lwc1 $f1, zero
	add.s $f12, $f1, $f0
	
	addi $v0, $0, 2
	syscall
	