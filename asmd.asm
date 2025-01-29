.data
_string_1: .asciiz "Probando if2"
_var1_: .asciiz "Probando if2"

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
la $a0, _var1_
li $v0, 4
syscall
li $t2, 0
li $t3, 10
la $t0, _var2_
lw $t1, $t3
sw $t1, 0($t0)
lw $t4, _var1_
move $a0, $t4
li $v0, 4
syscall
li $t5, 4
li $t6, 5
li $t7, 18
li $t9, 15
add $t10, $t8, $t9
la $t0, resultado
lw $t1, $t10
sw $t1, 0($t0)
sub $t12, $t6, $t11
la $t0, resultado
lw $t1, $t12
sw $t1, 0($t0)
add $t14, $t5, $t13
la $t0, resultado
lw $t1, $t14
sw $t1, 0($t0)
li $t16, 1
li $t17, 0
and $t18, $t16, $t17
li $t19, 8
li $t20, 6
sgt $t21, $t19, $t20
li.s $t22, 5.8
move $a0, $t22
li $v0, 2
syscall
li $t23, 8
move $t24, $t23
bne $t21, $zero, _etiqueta_true_25
j _etiqueta_end_26
_etiqueta_true_25:
_etiqueta_end_26:
li $t27, 1
move $v0, $t27
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
