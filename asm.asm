.data
_string_: .asciiz " "
_string_18: .asciiz "hola"
_string2_: .asciiz "hola"

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
addi $sp, $sp, -4
li $t0, 0
sw $t0, -4($fp)
li $t1, 6
addi $sp, $sp, -4
sw $t1, -8($fp)
li $t2, 4
li $t3, 11
add $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -12($fp)
li $t5, 0x40F66666
mtc1 $t5, $f0
swc1 $f0, -12($fp)
li $t6, 0x40F66666
mtc1 $t6, $f1
addi $sp, $sp, -4
swc1 $f1, -16($fp)
li $t7, 0x40F66666
mtc1 $t7, $f2
addi $sp, $sp, -4
swc1 $f2, -20($fp)
li $t8, 0x40F66666
mtc1 $t8, $f3
addi $sp, $sp, -4
swc1 $f3, -24($fp)
li $t9, 0x40F66666
mtc1 $t9, $f4
addi $sp, $sp, -4
swc1 $f4, -28($fp)
li $t0, 0x40F66666
mtc1 $t0, $f5
addi $sp, $sp, -4
swc1 $f5, -32($fp)
li $t1, 0x40F66666
mtc1 $t1, $f6
addi $sp, $sp, -4
swc1 $f6, -36($fp)
li $t2, 0x40F66666
mtc1 $t2, $f7
addi $sp, $sp, -4
swc1 $f7, -40($fp)
li $t3, 0x40F66666
mtc1 $t3, $f8
addi $sp, $sp, -4
swc1 $f8, -44($fp)
li $t4, 0x40F66666
mtc1 $t4, $f9
addi $sp, $sp, -4
swc1 $f9, -48($fp)
li $t5, 0x40F66666
mtc1 $t5, $f10
addi $sp, $sp, -4
swc1 $f10, -52($fp)
li $t6, 0x40F66666
mtc1 $t6, $f11
addi $sp, $sp, -4
swc1 $f11, -56($fp)
lw $t7, -12($fp)
move $a0, $t7
li $v0, 1
syscall
la $a0, _string2_
li $v0, 4
syscall
li $t9, 1
move $v0, $t9
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
