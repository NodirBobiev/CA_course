#Fibonacci numbers
.data
	space:.asciiz " "
.text
main:
	li	$t1, 0
	li	$t2, 1
	li	$t3, 0
	li	$t4, 0
	
	li	$v0, 1
	move	$a0, $t3
	syscall
	
	li	$v0, 4
	la	$a0, space
	syscall
loop:
	bgt	$t4, 10, exit
	addi	$t4, $t4, 1
	add 	$t3, $t2, $t1
	move 	$t1, $t2
	move	$t2, $t3
	
	li	$v0, 1
	move	$a0, $t3
	syscall 
	
	li	$v0,4
	la	$a0, space 
	syscall
	j 	loop
exit:
	
	