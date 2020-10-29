.text
	li	$v0, 5
	syscall
	move	$t0, $v0
	
	li	$t1, 0  #counter
	li	$t2, 0  #sum
loop:
	beq	$t1, $t0, exit
	li	$v0, 5
	syscall
	add	$t2, $t2, $v0
	addi	$t1, $t1, 1
	j loop
	

exit:
	li	$v0, 1
	move	$a0, $t2
	syscall