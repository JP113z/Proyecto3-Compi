.data
_string_1: .asciiz "Iteración en while dentro de if"
_mensajeWhile_: .asciiz "Iteración en while dentro de if"
_string_16: .asciiz "El valor es mayor o igual a 10, no entra al while"
_string_34: .asciiz "El valor de i es menor que 3"
_string_35: .asciiz "El valor de i es mayor o igual a 3"
_string_55: .asciiz "while iteracion "
_string2_: .asciiz "while iteracion "
_string_62: .asciiz "  Segundo If  "
_string_70: .asciiz "  Tercer If  "
_string_86: .asciiz "  while 2  "
_string_91: .asciiz "for iteracion "
_string1_: .asciiz "for iteracion "
_string_101: .asciiz "for iteracion prueba 2 "
_string3_: .asciiz "for iteracion prueba 2 "
_string_112: .asciiz "    case 1 "
_stringSwitch_: .asciiz "    case 1 "
_string_113: .asciiz "    case 2 "
_stringSwitch1_: .asciiz "    case 2 "
_string_114: .asciiz "    default "
_stringSwitch2_: .asciiz "    default "
_string_123: .asciiz "    case 1 "
_string_129: .asciiz "    case 1 "
_string_135: .asciiz "    case 1 "

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
li $t8, 0
sw $t8, -8($fp)
li $t1, 0
sw $t1, -8($fp)
_for_start_19:
lw $t2, -8($fp)
li $t3, 5
sle $t4, $t2, $t3
beq $t4, $zero, _for_end_20
lw $t5, -8($fp)
addi $t6, $t5, 1
lw $t7, -8($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -8($fp)
li $t9, 3
sgt $t0, $t8, $t9
bne $t0, $zero, _etiqueta_true_31
j _etiqueta_end_if32
_etiqueta_true_31:
la $a0, _string_34
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _etiqueta_end_else33
_etiqueta_end_if32:
la $a0, _string_35
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_etiqueta_end_else33:
# Aplicando actualización del for
lw $t0, -8($fp)
move $t0, $t6
sw $t0, -8($fp)
j _for_start_19
_for_end_20:
li $t6, 1
move $v0, $t6
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
li $t7, 0
sw $t7, -12($fp)
li $t8, 5
sw $t8, -12($fp)
li $t9, 10
addi $sp, $sp, -4
sw $t9, -16($fp)
lw $t0, -12($fp)
lw $t1, -16($fp)
add $t2, $t0, $t1
addi $sp, $sp, -4
sw $t2, -20($fp)
li $t3, 15
addi $sp, $sp, -4
sw $t3, -24($fp)
li $t4, 20
addi $sp, $sp, -4
sw $t4, -28($fp)
li $t5, 6
li $t6, 8
sgt $t7, $t5, $t6
bne $t7, $zero, _etiqueta_true_48
j _etiqueta_end_if49
_etiqueta_true_48:
lw $t1, -16($fp)
move $a0, $t1
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t2, 8
addi $sp, $sp, -4
sw $t2, -32($fp)
j _etiqueta_end_else50
_etiqueta_end_if49:
lw $t3, -20($fp)
move $a0, $t3
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
li $t4, 10
sw $t4, -32($fp)
_etiqueta_end_else50:
la $a0, _string2_
li $v0, 4
li $t6, 6
li $t7, 8
slt $t8, $t6, $t7
bne $t8, $zero, _etiqueta_true_59
j _etiqueta_end_if60
_etiqueta_true_59:
la $a0, _string_62
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t3, 8
sw $t3, -32($fp)
_etiqueta_end_if60:
li $t4, 8
li $t5, 6
slt $t6, $t4, $t5
bne $t6, $zero, _etiqueta_true_67
j _etiqueta_end_if68
_etiqueta_true_67:
la $a0, _string_70
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
li $t1, 8
sw $t1, -32($fp)
_etiqueta_end_if68:
_while_start_72:
lw $t4, -12($fp)
li $t5, 0
sgt $t6, $t4, $t5
beq $t6, $zero, _while_end_73
la $a0, _string2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -12($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -12($fp)
addi $t9, $t8, -1
sw $t9, -12($fp)
j _while_start_72
_while_end_73:
li $t0, 3
addi $sp, $sp, -4
sw $t0, -36($fp)
_while_start_81:
lw $t3, -36($fp)
li $t4, 0
sgt $t5, $t3, $t4
beq $t5, $zero, _while_end_82
la $a0, _string_86
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t7, -36($fp)
move $a0, $t7
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
lw $t8, -36($fp)
addi $t9, $t8, -1
sw $t9, -36($fp)
j _while_start_81
_while_end_82:
addi $sp, $sp, -4
li $t0, 0
sw $t0, -40($fp)
la $a0, _string1_
li $v0, 4
li $t4, 2
sw $t4, -40($fp)
_for_start_92:
lw $t5, -40($fp)
li $t6, 10
sle $t7, $t5, $t6
beq $t7, $zero, _for_end_93
lw $t8, -40($fp)
addi $t9, $t8, 1
la $a0, _string1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -40($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t0, -40($fp)
move $t0, $t9
sw $t0, -40($fp)
j _for_start_92
_for_end_93:
la $a0, _string3_
li $v0, 4
li $t4, 10
addi $sp, $sp, -4
sw $t4, -44($fp)
_for_start_102:
lw $t5, -44($fp)
li $t6, 1
sge $t7, $t5, $t6
beq $t7, $zero, _for_end_103
lw $t8, -44($fp)
addi $t9, $t8, -1
la $a0, _string3_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
lw $t0, -44($fp)
move $a0, $t0
li $v0, 1
syscall
li $a0, 10
li $v0, 11
syscall
# Aplicando actualización del for
lw $t0, -44($fp)
move $t0, $t9
sw $t0, -44($fp)
j _for_start_102
_for_end_103:
li $t1, 3
addi $sp, $sp, -4
sw $t1, -48($fp)
la $a0, _stringSwitch_
li $v0, 4
la $a0, _stringSwitch1_
li $v0, 4
la $a0, _stringSwitch2_
li $v0, 4
li $t5, 3
li $t6, 5
li $t7, 1
sub $t8, $t6, $t7
add $t9, $t5, $t8
li $t2, 1
beq $t9, $t2, _case_0
j _case_next_0
_case_0:
la $a0, _string_123
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_120
_case_next_0:
li $t4, 2
beq $t9, $t4, _case_1
j _case_next_1
_case_1:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_120
_case_next_1:
_default_121:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_120:
li $t5, 1
li $t8, 1
beq $t5, $t8, _case_2
j _case_next_2
_case_2:
la $a0, _string_129
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_126
_case_next_2:
li $t0, 2
beq $t5, $t0, _case_3
j _case_next_3
_case_3:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_126
_case_next_3:
_default_127:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_126:
li $t1, 2
li $t4, 1
beq $t1, $t4, _case_4
j _case_next_4
_case_4:
la $a0, _string_135
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_132
_case_next_4:
li $t6, 2
beq $t1, $t6, _case_5
j _case_next_5
_case_5:
la $a0, _stringSwitch1_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_132
_case_next_5:
_default_133:
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_switch_end_132:
li $t7, 1
move $v0, $t7
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
