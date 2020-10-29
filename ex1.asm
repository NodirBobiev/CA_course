main:
	li	$v0, 5
	syscall
	move 	$t1, $v0
	beqz 	$v0, equal_to_zero
	bltz	$v0, less_than_zero
	bgtz	$v0, greater_than_zero
equal_to_zero:
	li	$t1, 0
	j	print
less_than_zero:
	li	$t1, -1
	j	print
greater_than_zero:
	li	$t1, 1
	j	print
print:
	li	$v0, 1
	move	$a0, $t1
	syscall
	