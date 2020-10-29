# x=(y*z^2)/f-q;
.data
	msg0: .asciiz "x=(y*z^2)/f-q\n"
	msg1: .asciiz "Enter y value: "
	msg2: .asciiz "Enter z value: "
	msg3: .asciiz "Enter f value: "
	msg4: .asciiz "Enter q value: "
	msg5: .asciiz "x is equal to: "
.text
	li	$v0, 4
	la	$a0, msg0
	syscall 
	
	li	$v0, 4
	la 	$a0, msg1
	syscall
	li	$v0, 5
	syscall
	move	$t1, $v0
	
	li	$v0, 4
	la 	$a0, msg2
	syscall
	li	$v0, 5
	syscall
	move	$t2, $v0
	
	li	$v0, 4
	la 	$a0, msg3
	syscall
	li	$v0, 5
	syscall
	move	$t3, $v0
	
	li	$v0, 4
	la 	$a0, msg4
	syscall
	li	$v0, 5
	syscall
	move	$t4, $v0
	
	mult 	$t2, $t2
	mflo	$t2
	
	mult	$t2, $t1
	mflo	$t2
	
	div 	$t2, $t3
	mflo	$t2
	
	sub 	$t2, $t2, $t4
	
	li	$v0, 4
	la	$a0, msg5
	syscall
	
	li	$v0, 1
	move	$a0, $t2
	syscall
	
	li	$v0, 10
	syscall	
	