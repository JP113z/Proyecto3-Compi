.data
_string_6: .asciiz "esto es un print"
_string2_: .asciiz "esto es un print"
_string_7: .asciiz "hola mundo"

.text
.globl main
main:
j _verano_

# Inicio del main (_verano_)
_verano_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t0, 0x40A00000
mtc1 $t0, $f0
li $t1, 0x40000000
mtc1 $t1, $f1
li.s $f2, 1.0
li.s $f4, 0.0
c.eq.s $f1, $f4
bc1t pow_end_3
mov.s $f3, $f1
li.s $f5, 1.0
pow_loop_2:
mul.s $f2, $f2, $f0
sub.s $f3, $f3, $f5
c.le.s $f3, $f4
bc1t pow_end_3
b pow_loop_2
pow_end_3:
addi $sp, $sp, -4
swc1 $f2, -4($fp)
lwc1 $f6, -4($fp)
li $v0, 2
mov.s $f12, $f6
syscall
li $a0, 10
li $v0, 11
syscall
li $t4, 10
addi $sp, $sp, -4
sw $t4, -8($fp)
lw $t5, -8($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
la $a0, _string2_
li $v0, 4
la $a0, _string_7
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t8, 'd'
move $a0, $t8
li $v0, 11
syscall
li $a0, 10
li $v0, 11
syscall
li $t9, 0x4125851F
mtc1 $t9, $f7
li $v0, 2
mov.s $f12, $f7
syscall
li $a0, 10
li $v0, 11
syscall
li $t0, 1
move $v0, $t0
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
