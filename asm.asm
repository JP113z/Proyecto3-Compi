.data
_string_18: .asciiz "while iteracion "
_string2_: .asciiz "while iteracion "
_string_25: .asciiz "  Segundo If  "
_string_41: .asciiz "  while 2  "
_string_46: .asciiz "for iteracion "
_string1_: .asciiz "for iteracion "
_string_56: .asciiz "for iteracion prueba 2 "
_string3_: .asciiz "for iteracion prueba 2 "
_string_67: .asciiz "    case 1 "
_stringSwitch_: .asciiz "    case 1 "
_string_68: .asciiz "    case 2 "
_stringSwitch1_: .asciiz "    case 2 "
_string_69: .asciiz "    default "
_stringSwitch2_: .asciiz "    default "
_string_78: .asciiz "    case 1 "
_string_82: .asciiz "Iteración en while dentro de if"
_mensajeWhile_: .asciiz "Iteración en while dentro de if"
_string_97: .asciiz "El valor es mayor o igual a 10, no entra al while"
_string_115: .asciiz "El valor de i es menor que 3"
_string_116: .asciiz "El valor de i es mayor o igual a 3"

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
la $a0, _string2_
li $v0, 4
syscall
li $t9, 6
li $t0, 8
slt $t1, $t9, $t0
bne $t1, $zero, _etiqueta_true_22
j _etiqueta_end_if23
_etiqueta_true_22:
la $a0, _string_25
li $v0, 4
syscall
li $t6, 8
sw $t6, -24($fp)
_etiqueta_end_if23:
_while_start_27:
lw $t9, -4($fp)
li $t0, 0
sgt $t1, $t9, $t0
beq $t1, $zero, _while_end_28
la $a0, _string2_
li $v0, 4
syscall
lw $t2, -4($fp)
move $a0, $t2
li $v0, 1
syscall
lw $t3, -4($fp)
addi $t4, $t3, -1
sw $t4, -4($fp)
j _while_start_27
_while_end_28:
li $t5, 3
addi $sp, $sp, -4
sw $t5, -28($fp)
_while_start_36:
lw $t8, -4($fp)
li $t9, 0
sgt $t0, $t8, $t9
beq $t0, $zero, _while_end_37
la $a0, _string_41
li $v0, 4
syscall
lw $t2, -28($fp)
move $a0, $t2
li $v0, 1
syscall
lw $t3, -28($fp)
addi $t4, $t3, -1
sw $t4, -28($fp)
j _while_start_36
_while_end_37:
addi $sp, $sp, -4
li $t5, 0
sw $t5, -32($fp)
la $a0, _string1_
li $v0, 4
syscall
li $t9, 2
sw $t9, -32($fp)
_for_start_47:
lw $t0, -32($fp)
li $t1, 10
sle $t2, $t0, $t1
beq $t2, $zero, _for_end_48
lw $t3, -32($fp)
addi $t4, $t3, 1
la $a0, _string1_
li $v0, 4
syscall
lw $t5, -32($fp)
move $a0, $t5
li $v0, 1
syscall
# Aplicando actualización del for
lw $t0, -32($fp)
move $t0, $t4
sw $t0, -32($fp)
j _for_start_47
_for_end_48:
la $a0, _string3_
li $v0, 4
syscall
li $t9, 10
addi $sp, $sp, -4
sw $t9, -36($fp)
_for_start_57:
lw $t0, -36($fp)
li $t1, 1
sge $t2, $t0, $t1
beq $t2, $zero, _for_end_58
lw $t3, -36($fp)
addi $t4, $t3, -1
la $a0, _string3_
li $v0, 4
syscall
lw $t5, -36($fp)
move $a0, $t5
li $v0, 1
syscall
# Aplicando actualización del for
lw $t0, -36($fp)
move $t0, $t4
sw $t0, -36($fp)
j _for_start_57
_for_end_58:
li $t6, 3
addi $sp, $sp, -4
sw $t6, -40($fp)
la $a0, _stringSwitch_
li $v0, 4
syscall
la $a0, _stringSwitch1_
li $v0, 4
syscall
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $t0, 3
li $t1, 5
li $t2, 1
sub $t3, $t1, $t2
add $t4, $t0, $t3
li $t7, 1
beq $t4, $t7, _case_0
j _case_next_0
_case_0:
la $a0, _string_78
li $v0, 4
syscall
j _switch_end_75
_case_next_0:
li $t9, 2
beq $t4, $t9, _case_1
j _case_next_1
_case_1:
la $a0, _stringSwitch1_
li $v0, 4
syscall
j _switch_end_75
_case_next_1:
_default_76:
la $a0, _stringSwitch2_
li $v0, 4
syscall
_switch_end_75:
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

# Inicio de la función _test1_
_test1_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t1, 7
addi $sp, $sp, -4
sw $t1, -44($fp)
la $a0, _mensajeWhile_
li $v0, 4
syscall
lw $t3, -44($fp)
li $t4, 10
sle $t5, $t3, $t4
bne $t5, $zero, _etiqueta_true_86
j _etiqueta_end_if87
_etiqueta_true_86:
_while_start_89:
lw $t1, -44($fp)
li $t2, 0
sgt $t3, $t1, $t2
beq $t3, $zero, _while_end_90
la $a0, _mensajeWhile_
li $v0, 4
syscall
lw $t4, -44($fp)
move $a0, $t4
li $v0, 1
syscall
lw $t5, -44($fp)
addi $t6, $t5, -1
sw $t6, -44($fp)
j _while_start_89
_while_end_90:
j _etiqueta_end_else88
_etiqueta_end_if87:
la $a0, _string_97
li $v0, 4
syscall
_etiqueta_end_else88:
li $t8, 1
move $v0, $t8
jr $ra

# Fin de la función _test1_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Inicio de la función _test2_
_test2_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
addi $sp, $sp, -4
li $t9, 0
sw $t9, -48($fp)
li $t2, 0
sw $t2, -48($fp)
_for_start_100:
lw $t3, -48($fp)
li $t4, 5
sle $t5, $t3, $t4
beq $t5, $zero, _for_end_101
lw $t6, -48($fp)
addi $t7, $t6, 1
lw $t8, -48($fp)
move $a0, $t8
li $v0, 1
syscall
lw $t9, -48($fp)
li $t0, 3
sgt $t1, $t9, $t0
bne $t1, $zero, _etiqueta_true_112
j _etiqueta_end_if113
_etiqueta_true_112:
la $a0, _string_115
li $v0, 4
syscall
j _etiqueta_end_else114
_etiqueta_end_if113:
la $a0, _string_116
li $v0, 4
syscall
_etiqueta_end_else114:
# Aplicando actualización del for
lw $t0, -48($fp)
move $t0, $t7
sw $t0, -48($fp)
j _for_start_100
_for_end_101:
li $t7, 1
move $v0, $t7
jr $ra

# Fin de la función _test2_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
