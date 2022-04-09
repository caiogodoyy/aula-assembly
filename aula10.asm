.data
	zero: .double 0.0

.text
	addi $v0, $0, 7
	syscall
	
	lwc1 $f2, zero
	add.d $f12, $f2, $f0
	
	addi $v0, $0, 3
	syscall