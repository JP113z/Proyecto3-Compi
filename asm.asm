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
addi $sp, $sp, -4
li $t0, 0
sw $t0, -4($fp)
li $t1, 5
sw $t1, -4($fp)
li $t2, 10
addi $sp, $sp, -4
sw $t2, -8($fp)
lw $t3, -4($fp)
lw $t4, -8($fp)
add $t5, $t3, $t4
addi $sp, $sp, -4
sw $t6, -12($fp)
li $t7, 15
addi $sp, $sp, -4
sw $t7, -16($fp)
li $t8, 20
addi $sp, $sp, -4
sw $t8, -20($fp)
li $t9, 8
li $t0, 6
sgt $t1, $t9, $t0
bne $t1, $zero, _etiqueta_true_12
j _etiqueta_end_if13
_etiqueta_true_12:
lw $t5, -8($fp)
move $a0, $t5
li $v0, 1
syscall
li $t6, 8
addi $sp, $sp, -4
sw $t6, -24($fp)
j _etiqueta_end_else14
_etiqueta_end_if13:
lw $t7, -20($fp)
move $a0, $t7
li $v0, 1
syscall
li $t8, 10
sw $t8, -24($fp)
_etiqueta_end_else14:
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
