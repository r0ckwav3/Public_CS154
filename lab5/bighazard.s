# By Peter Vandervelde
# Made for lab 5 of CS 154

# this test is kinda long, so you need to run your simulation for at least 60 cycles
# The first 4 tests (addresses 0-12) need the first three lines as setup
# The last test (addresses 20) needs the second last one as setup (address 10)
# Expected output:
# mem: {0:10, 4:10, 8:10, 12:10, 16:255, 20:256}

.text
main:
	addi $t1, $zero, 5
	addi $t2, $zero, 3
	addi $t3, $zero, 2
	nop
	nop

	add $t0, $zero, $t1
	nop
	add $t0, $t0, $t1
	nop
	nop
	sw $t0, 0($zero)
	nop
	nop

	add $t0, $zero, $t1
	add $t0, $t0, $t1
	nop
	nop
	sw $t0, 4($zero)
	nop
	nop

	add $t0, $zero, $t2
	add $t0, $t0, $t3
	add $t0, $t0, $t1
	nop
	nop
	sw $t0, 8($zero)
	nop
	nop

	addi $t0, $zero, 6
	addi $t0, $t0, 4
	nop
	nop
	sw $t0, 12($zero)
	nop
	nop

	addi $t0, $zero, 100
	nop
	nop
	sw $t0, 16($zero)
	nop
	nop
	addi $t0, $zero, 200
	lw $t0, 16($zero)
	addi $t0, $t0, 155
	sw $t0, 16($zero)
	nop
	nop

	addi $t0, $zero, 8
	addi $t0, $t0, 8
	lw $t1, 0($t0)
	addi $t1, $t1, 1
	sw $t1, 20($zero)
