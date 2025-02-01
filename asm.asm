.data
_string_1: .asciiz " func1: Iteración en while dentro de if"
_mensajeWhile_: .asciiz " func1: Iteración en while dentro de if"
_string_16: .asciiz " func1: El valor es mayor o igual a 10, no entra al while"
_string_35: .asciiz " func 2: El valor de i es mayor que 3"
_string_36: .asciiz " func 2: El valor de i es menor o igual a 3"
_string_56: .asciiz "while iteracion "
_string2_: .asciiz "while iteracion "
_string_63: .asciiz "  Segundo If  "
_string_71: .asciiz "  Tercer If  "
_string_87: .asciiz "  while 2  "
_string_92: .asciiz "for iteracion "
_string1_: .asciiz "for iteracion "
_string_102: .asciiz "for iteracion prueba 2 "
_string3_: .asciiz "for iteracion prueba 2 "
_string_113: .asciiz "    case 1 "
_stringSwitch_: .asciiz "    case 1 "
_string_114: .asciiz "    case 2 "
_stringSwitch1_: .asciiz "    case 2 "
_string_115: .asciiz "    default "
_stringSwitch2_: .asciiz "    default "
_string_124: .asciiz "    case 1 "
_string_130: .asciiz "    case 1 "
_string_136: .asciiz "    case 1 "

.text
.globl main
main:
j _verano_

# Inicio de la función _test1_
_test1_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
addi $sp, $sp, -4
li $t0, 7
addi $sp, $sp, -4
sw $t0, -4($fp)
la $a0, _mensajeWhile_
li $v0, 4
lw $t2, -4($fp)
li $t3, 10
slt $t4, $t2, $t3
bne $t4, $zero, _etiqueta_true_5
j _etiqueta_end_if6
_etiqueta_true_5:
_while_start_8:
lw $t0, -4($fp)
li $t1, 0
sgt $t2, $t0, $t1
beq $t2, $zero, _while_end_9
la $a0, _mensajeWhile_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t3, -4($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t4, -4($fp)
addi $t5, $t4, -1
sw $t5, -4($fp)
j _while_start_8
_while_end_9:
j _etiqueta_end_else7
_etiqueta_end_if6:
la $a0, _string_16
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_etiqueta_end_else7:
li $t7, 1
move $v0, $t7
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
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
addi $sp, $sp, -4
li $t8, 0
sw $t8, -8($fp)
# Guardando registros temporales
move $s7, $sp
addi $sp, $sp, -40
sw $t0, 36($sp)
sw $t1, 32($sp)
sw $t2, 28($sp)
sw $t3, 24($sp)
sw $t4, 20($sp)
sw $t5, 16($sp)
sw $t6, 12($sp)
sw $t7, 8($sp)
sw $t8, 4($sp)
sw $t9, 0($sp)
jal _test1_
# Restaurando registros temporales
lw $t0, 36($sp)
lw $t1, 32($sp)
lw $t2, 28($sp)
lw $t3, 24($sp)
lw $t4, 20($sp)
lw $t5, 16($sp)
lw $t6, 12($sp)
lw $t7, 8($sp)
lw $t8, 4($sp)
lw $t9, 0($sp)
move $sp, $s7
move $t9, $v0
li $t2, 0
sw $t2, -8($fp)
_for_start_20:
lw $t3, -8($fp)
li $t4, 5
sle $t5, $t3, $t4
beq $t5, $zero, _for_end_21
lw $t6, -8($fp)
addi $t7, $t6, 1
lw $t8, -8($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -8($fp)
li $t0, 3
sgt $t1, $t9, $t0
bne $t1, $zero, _etiqueta_true_32
j _etiqueta_end_if33
_etiqueta_true_32:
la $a0, _string_35
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _etiqueta_end_else34
_etiqueta_end_if33:
la $a0, _string_36
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_etiqueta_end_else34:
# Aplicando actualización del for
lw $t0, -8($fp)
move $t0, $t7
sw $t0, -8($fp)
j _for_start_20
_for_end_21:
li $t7, 1
move $v0, $t7
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Fin de la función _test2_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Inicio del main (_verano_)
_verano_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
addi $sp, $sp, -4
addi $sp, $sp, -4
li $t8, 0
sw $t8, -12($fp)
li $t9, 5
sw $t9, -12($fp)
li $t0, 10
addi $sp, $sp, -4
sw $t0, -16($fp)
lw $t1, -12($fp)
lw $t2, -16($fp)
add $t3, $t1, $t2
addi $sp, $sp, -4
sw $t3, -20($fp)
li $t4, 15
addi $sp, $sp, -4
sw $t4, -24($fp)
li $t5, 20
addi $sp, $sp, -4
sw $t5, -28($fp)
li $t6, 6
li $t7, 8
sgt $t8, $t6, $t7
bne $t8, $zero, _etiqueta_true_49
j _etiqueta_end_if50
_etiqueta_true_49:
lw $t2, -16($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t3, 8
addi $sp, $sp, -4
sw $t3, -32($fp)
j _etiqueta_end_else51
_etiqueta_end_if50:
lw $t4, -20($fp)
move $a0, $t4
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t5, 10
sw $t5, -32($fp)
_etiqueta_end_else51:
la $a0, _string2_
li $v0, 4
li $t7, 6
li $t8, 8
slt $t9, $t7, $t8
bne $t9, $zero, _etiqueta_true_60
j _etiqueta_end_if61
_etiqueta_true_60:
la $a0, _string_63
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t4, 8
sw $t4, -32($fp)
_etiqueta_end_if61:
li $t5, 8
li $t6, 6
slt $t7, $t5, $t6
bne $t7, $zero, _etiqueta_true_68
j _etiqueta_end_if69
_etiqueta_true_68:
la $a0, _string_71
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t2, 8
sw $t2, -32($fp)
_etiqueta_end_if69:
_while_start_73:
lw $t5, -12($fp)
li $t6, 0
sgt $t7, $t5, $t6
beq $t7, $zero, _while_end_74
la $a0, _string2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -12($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -12($fp)
addi $t0, $t9, -1
sw $t0, -12($fp)
j _while_start_73
_while_end_74:
li $t1, 3
addi $sp, $sp, -4
sw $t1, -36($fp)
_while_start_82:
lw $t4, -36($fp)
li $t5, 0
sgt $t6, $t4, $t5
beq $t6, $zero, _while_end_83
la $a0, _string_87
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -36($fp)
move $a0, $t8
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -36($fp)
addi $t0, $t9, -1
sw $t0, -36($fp)
j _while_start_82
_while_end_83:
addi $sp, $sp, -4
li $t1, 0
sw $t1, -40($fp)
la $a0, _string1_
li $v0, 4
li $t5, 2
sw $t5, -40($fp)
_for_start_93:
lw $t6, -40($fp)
li $t7, 10
sle $t8, $t6, $t7
beq $t8, $zero, _for_end_94
lw $t9, -40($fp)
addi $t0, $t9, 1
la $a0, _string1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -40($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t1, -40($fp)
move $t1, $t0
sw $t1, -40($fp)
j _for_start_93
_for_end_94:
la $a0, _string3_
li $v0, 4
li $t5, 10
addi $sp, $sp, -4
sw $t5, -44($fp)
_for_start_103:
lw $t6, -44($fp)
li $t7, 1
sge $t8, $t6, $t7
beq $t8, $zero, _for_end_104
lw $t9, -44($fp)
addi $t0, $t9, -1
la $a0, _string3_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t1, -44($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t1, -44($fp)
move $t1, $t0
sw $t1, -44($fp)
j _for_start_103
_for_end_104:
li $t2, 3
addi $sp, $sp, -4
sw $t2, -48($fp)
la $a0, _stringSwitch_
li $v0, 4
la $a0, _stringSwitch1_
li $v0, 4
la $a0, _stringSwitch2_
li $v0, 4
li $t6, 3
li $t7, 5
li $t8, 1
sub $t9, $t7, $t8
add $t0, $t6, $t9
li $t3, 1
beq $t0, $t3, _case_0
j _case_next_0
_case_0:
la $a0, _string_124
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_121
_case_next_0:
li $t5, 2
beq $t0, $t5, _case_1
j _case_next_1
_case_1:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_121
_case_next_1:
_default_122:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_121:
li $t6, 1
li $t9, 1
beq $t6, $t9, _case_2
j _case_next_2
_case_2:
la $a0, _string_130
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_127
_case_next_2:
li $t1, 2
beq $t6, $t1, _case_3
j _case_next_3
_case_3:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_127
_case_next_3:
_default_128:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_127:
li $t2, 2
li $t5, 1
beq $t2, $t5, _case_4
j _case_next_4
_case_4:
la $a0, _string_136
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_133
_case_next_4:
li $t7, 2
beq $t2, $t7, _case_5
j _case_next_5
_case_5:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_133
_case_next_5:
_default_134:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_133:
li $t8, 1
move $v0, $t8
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
