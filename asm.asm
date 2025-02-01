.data
_string_18: .asciiz "while iteracion "
_string2_: .asciiz "while iteracion "
_string_28: .asciiz "for iteracion "
_string1_: .asciiz "for iteracion "
_string_38: .asciiz "for iteracion prueba 2 "
_string3_: .asciiz "for iteracion prueba 2 "
_string_49: .asciiz "    case 1 "
_stringSwitch_: .asciiz "    case 1 "
_string_50: .asciiz "    case 2 "
_stringSwitch1_: .asciiz "    case 2 "
_string_51: .asciiz "    default "
_stringSwitch2_: .asciiz "    default "
_string_60: .asciiz "    case 1 "

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
_while_start_19:
lw $t1, -4($fp)
li $t2, 0
sgt $t3, $t1, $t2
beq $t3, $zero, _while_end_20
la $a0, _string2_
li $v0, 4
syscall
lw $t4, -4($fp)
move $a0, $t4
li $v0, 1
syscall
lw $t5, -4($fp)
addi $t6, $t5, -1
sw $t6, -4($fp)
j _while_start_19
_while_end_20:
addi $sp, $sp, -4
li $t7, 0
sw $t7, -28($fp)
la $a0, _string1_
li $v0, 4
syscall
li $t1, 2
sw $t1, -28($fp)
_for_start_29:
lw $t2, -28($fp)
li $t3, 10
sle $t4, $t2, $t3
beq $t4, $zero, _for_end_30
lw $t5, -28($fp)
addi $t6, $t5, 1
la $a0, _string1_
li $v0, 4
syscall
lw $t7, -28($fp)
move $a0, $t7
li $v0, 1
syscall
# Aplicando actualización del for
lw $t0, -28($fp)
move $t0, $t6
sw $t0, -28($fp)
j _for_start_29
_for_end_30:
la $a0, _string3_
li $v0, 4
syscall
li $t1, 10
addi $sp, $sp, -4
sw $t1, -32($fp)
_for_start_39:
lw $t2, -32($fp)
li $t3, 1
sge $t4, $t2, $t3
beq $t4, $zero, _for_end_40
lw $t5, -32($fp)
addi $t6, $t5, -1
la $a0, _string3_
li $v0, 4
syscall
lw $t7, -32($fp)
move $a0, $t7
li $v0, 1
syscall
# Aplicando actualización del for
lw $t0, -32($fp)
move $t0, $t6
sw $t0, -32($fp)
j _for_start_39
_for_end_40:
li $t8, 3
addi $sp, $sp, -4
sw $t8, -36($fp)
la $a0, _stringSwitch_
li $v0, 4
syscall
la $a0, _stringSwitch1_
li $v0, 4
syscall
la $a0, _stringSwitch2_
li $v0, 4
syscall
li $t2, 3
li $t3, 5
li $t4, 1
sub $t5, $t3, $t4
add $t6, $t2, $t5
li $t9, 1
beq $t6, $t9, _case_0
j _case_next_0
_case_0:
la $a0, _string_60
li $v0, 4
syscall
j _switch_end_57
_case_next_0:
li $t1, 2
beq $t6, $t1, _case_1
j _case_next_1
_case_1:
la $a0, _stringSwitch1_
li $v0, 4
syscall
j _switch_end_57
_case_next_1:
_switch_end_57:
li $t2, 1
move $v0, $t2
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
