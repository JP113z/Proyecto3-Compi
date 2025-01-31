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
sw $t5, -12($fp)
li $t6, 15
addi $sp, $sp, -4
sw $t6, -16($fp)
li $t7, 20
addi $sp, $sp, -4
sw $t7, -20($fp)
li $t8, 6
li $t9, 8
sgt $t0, $t8, $t9
bne $t0, $zero, _etiqueta_true_11
j _etiqueta_end_if12
_etiqueta_true_11:
lw $t4, -8($fp)
move $a0, $t4
li $v0, 1
syscall
li $t5, 8
addi $sp, $sp, -4
sw $t5, -24($fp)
j _etiqueta_end_else13
_etiqueta_end_if12:
lw $t6, -12($fp)
move $a0, $t6
li $v0, 1
syscall
li $t7, 10
sw $t7, -24($fp)
_etiqueta_end_else13:
_while_start_18:
lw $t0, -4($fp)
li $t1, 0
sgt $t2, $t0, $t1
beq $t2, $zero, _while_end_19
lw $t3, -4($fp)
move $a0, $t3
li $v0, 1
syscall
lw $t4, -4($fp)
addi $t5, $t4, -1
sw $t5, -4($fp)
j _while_start_18
_while_end_19:
li $t6, 1
move $v0, $t6
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
