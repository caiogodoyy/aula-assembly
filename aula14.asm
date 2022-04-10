.data
	array: .space 16
	array2: .word 1,2,3,4,5
	
.text
	la $s0, array
	
	addi $t0, $0, 1
	sw $t0, 0($s0)
	addi $t0, $0, 2
	sw $t0, 4($s0)
	addi $t0, $0, 3
	sw $t0, 8($s0)
	addi $t0, $0, 4
	sw $t0, 12($s0)
	addi $t0, $0, 5
	sw $t0, 16($s0)