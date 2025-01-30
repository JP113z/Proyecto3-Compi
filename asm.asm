.data

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
li $t0, 5
li $t1, 10
add $t2, $t0, $t1
li $t0, 0x405C7AE1
li $t0, 0x3F9DF3B6
add.s $f6, $f6, $f4
li $t0, 0x4125851F
li $v0, 2
mtc1 $t0, $f12
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
