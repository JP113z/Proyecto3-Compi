.data
_string_1: .asciiz " func1: Iteración en while dentro de if"
_mensajeWhile_: .asciiz " func1: Iteración en while dentro de if"
_string_16: .asciiz " func1: El valor es mayor o igual a 10, no entra al while"
_string_35: .asciiz " func 2: El valor de i es mayor que 3"
_string_36: .asciiz " func 2: El valor de i es menor o igual a 3"
_string_57: .asciiz "while iteracion "
_string2_: .asciiz "while iteracion "
_string_64: .asciiz "  Segundo If  "
_string_72: .asciiz "  Tercer If  "
_string_88: .asciiz "  while 2  "
_string_93: .asciiz "for iteracion "
_string1_: .asciiz "for iteracion "
_string_103: .asciiz "for iteracion prueba 2 "
_string3_: .asciiz "for iteracion prueba 2 "
_string_114: .asciiz "    case 1 "
_stringSwitch_: .asciiz "    case 1 "
_string_115: .asciiz "    case 2 "
_stringSwitch1_: .asciiz "    case 2 "
_string_116: .asciiz "    default "
_stringSwitch2_: .asciiz "    default "
_string_125: .asciiz "    case 1 "
_string_131: .asciiz "    case 1 "
_string_137: .asciiz "    case 1 "

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
move $t7, $v0
li $t8, 1
move $v0, $t8
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
li $t9, 0
sw $t9, -12($fp)
li $t0, 5
sw $t0, -12($fp)
li $t1, 10
addi $sp, $sp, -4
sw $t1, -16($fp)
lw $t2, -12($fp)
lw $t3, -16($fp)
add $t4, $t2, $t3
addi $sp, $sp, -4
sw $t4, -20($fp)
li $t5, 15
addi $sp, $sp, -4
sw $t5, -24($fp)
li $t6, 20
addi $sp, $sp, -4
sw $t6, -28($fp)
li $t7, 6
li $t8, 8
sgt $t9, $t7, $t8
bne $t9, $zero, _etiqueta_true_50
j _etiqueta_end_if51
_etiqueta_true_50:
lw $t3, -16($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t4, 8
addi $sp, $sp, -4
sw $t4, -32($fp)
j _etiqueta_end_else52
_etiqueta_end_if51:
lw $t5, -20($fp)
move $a0, $t5
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t6, 10
sw $t6, -32($fp)
_etiqueta_end_else52:
la $a0, _string2_
li $v0, 4
li $t8, 6
li $t9, 8
slt $t0, $t8, $t9
bne $t0, $zero, _etiqueta_true_61
j _etiqueta_end_if62
_etiqueta_true_61:
la $a0, _string_64
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t5, 8
sw $t5, -32($fp)
_etiqueta_end_if62:
li $t6, 8
li $t7, 6
slt $t8, $t6, $t7
bne $t8, $zero, _etiqueta_true_69
j _etiqueta_end_if70
_etiqueta_true_69:
la $a0, _string_72
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t3, 8
sw $t3, -32($fp)
_etiqueta_end_if70:
_while_start_74:
lw $t6, -12($fp)
li $t7, 0
sgt $t8, $t6, $t7
beq $t8, $zero, _while_end_75
la $a0, _string2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -12($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -12($fp)
addi $t1, $t0, -1
sw $t1, -12($fp)
j _while_start_74
_while_end_75:
li $t2, 3
addi $sp, $sp, -4
sw $t2, -36($fp)
_while_start_83:
lw $t5, -36($fp)
li $t6, 0
sgt $t7, $t5, $t6
beq $t7, $zero, _while_end_84
la $a0, _string_88
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t9, -36($fp)
move $a0, $t9
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -36($fp)
addi $t1, $t0, -1
sw $t1, -36($fp)
j _while_start_83
_while_end_84:
addi $sp, $sp, -4
li $t2, 0
sw $t2, -40($fp)
la $a0, _string1_
li $v0, 4
li $t6, 2
sw $t6, -40($fp)
_for_start_94:
lw $t7, -40($fp)
li $t8, 10
sle $t9, $t7, $t8
beq $t9, $zero, _for_end_95
lw $t0, -40($fp)
addi $t1, $t0, 1
la $a0, _string1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -40($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t0, -40($fp)
move $t0, $t1
sw $t0, -40($fp)
j _for_start_94
_for_end_95:
la $a0, _string3_
li $v0, 4
li $t6, 10
addi $sp, $sp, -4
sw $t6, -44($fp)
_for_start_104:
lw $t7, -44($fp)
li $t8, 1
sge $t9, $t7, $t8
beq $t9, $zero, _for_end_105
lw $t0, -44($fp)
addi $t1, $t0, -1
la $a0, _string3_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t2, -44($fp)
move $a0, $t2
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t0, -44($fp)
move $t0, $t1
sw $t0, -44($fp)
j _for_start_104
_for_end_105:
li $t3, 3
addi $sp, $sp, -4
sw $t3, -48($fp)
la $a0, _stringSwitch_
li $v0, 4
la $a0, _stringSwitch1_
li $v0, 4
la $a0, _stringSwitch2_
li $v0, 4
li $t7, 3
li $t8, 5
li $t9, 1
sub $t0, $t8, $t9
add $t1, $t7, $t0
li $t4, 1
beq $t1, $t4, _case_0
j _case_next_0
_case_0:
la $a0, _string_125
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_122
_case_next_0:
li $t6, 2
beq $t1, $t6, _case_1
j _case_next_1
_case_1:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_122
_case_next_1:
_default_123:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_122:
li $t7, 1
li $t0, 1
beq $t7, $t0, _case_2
j _case_next_2
_case_2:
la $a0, _string_131
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_128
_case_next_2:
li $t2, 2
beq $t7, $t2, _case_3
j _case_next_3
_case_3:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_128
_case_next_3:
_default_129:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_128:
li $t3, 2
li $t6, 1
beq $t3, $t6, _case_4
j _case_next_4
_case_4:
la $a0, _string_137
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_134
_case_next_4:
li $t8, 2
beq $t3, $t8, _case_5
j _case_next_5
_case_5:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_134
_case_next_5:
_default_135:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_134:
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
jal _test2_
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
li $t0, 1
move $v0, $t0
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
