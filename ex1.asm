.data
	fivePtZero:	.float 5.0
	ninePtZero: 	.float 9.0
	celsius:	.float 0.0
	fahrenheit:	.float 0.0
	thTwoPtZero:	.float 32.0
.text
	li	$v0, 6
	syscall
	s.s 	$f0, fahrenheit
	
	l.s	$f0, fahrenheit
	l.s	$f1, thTwoPtZero
	sub.s	$f0, $f0, $f1
	
	l.s	$f1, fivePtZero
	mul.s	$f0, $f0, $f1
	
	l.s	$f1, ninePtZero
	div.s	$f0, $f0, $f1
	
	s.s	$f0, celsius
	
	li	$v0, 2
	mov.s	$f12, $f0
	syscall