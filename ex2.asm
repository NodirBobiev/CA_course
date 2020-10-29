.data
	string:.asciiz "01 nodir"
	space: .asciiz " "
.text
	la	$t0, string	#leftmost element of the string
	li 	$t1, 0		#answer
	li	$t4, 1		#previous element
loop:
	lb	$t2, ($t0)	
	beq	$t2, 0, exit
	sne	$t3, $t2, 32 	
	and	$t5, $t3, $t4
	add	$t1, $t1, $t5
	seq	$t4, $t2, 32
	addi	$t0, $t0, 1
	j loop	

exit:
	li	$v0, 1
	move	$a0, $t1
	syscall
	xor	