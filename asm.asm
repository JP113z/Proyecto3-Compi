.data
_s1_: .asciiz " "
_string_8: .asciiz "Hola $ magos &/#$& cierraregalo  mundo"
_str_: .asciiz "Hola $ magos &/#$& cierraregalo  mundo"
_string_29: .asciiz "entra al  elfo "
_string_38: .asciiz "!#"
_string_46: .asciiz "un  historia "

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
li $t0, 67
li $t1, 0xBC23D70A
mtc1 $t1, $f0
la $t0, _arr_
sw $f0, 0($t0)
addi $sp, $sp, -4
li $t2, 0
sw $t2, -4($fp)
lw $t3, -4($fp)
li $t4, 1
li $t5, 0xC0D66666
mtc1 $t5, $f1
li $v0, 2
mov.s $f12, $f1
syscall
li $a0, 10
li $v0, 11
syscall
li $t6, 1

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall

# Inicio de la función _mi_
_mi_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
addi $sp, $sp, -4
li $t7, 0
sw $t7, -8($fp)
la $a0, _str_
li $v0, 4
li $t1, 2
_for_start_9:
li $t2, 10
sle $t3, null, $t2
beq $t3, $zero, _for_end_10
_while_start_14:
li $t6, 0x41433333
mtc1 $t6, $f2
li $t7, 12
li $t8, 34
li $t9, 35
add $t0, $t8, $t9
sgt $t1, $t7, $t0
sgt $t2, null, null
beq $t2, $zero, _while_end_15
li $t3, 1
j _while_start_14
_while_end_15:
li $t4, 0
seq $t5, null, $t4
bne $t5, $zero, _etiqueta_true_26
j _etiqueta_end_if27
_etiqueta_true_26:
la $a0, _string_29
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
_etiqueta_end_if27:
li $t0, 1
bne $t0, $zero, _etiqueta_true_31
j _etiqueta_end_if32
_etiqueta_true_31:
j _etiqueta_end_else33
_etiqueta_end_if32:
lw $t4, -8($fp)
li $t7, 1
beq $t4, $t7, _case_0
j _case_next_0
_case_0:
la $a0, _string_38
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_35
_case_next_0:
li $t9, 2
beq $t4, $t9, _case_1
j _case_next_1
_case_1:
li $t0, 10
sw $t0, -8($fp)
j _switch_end_35
_case_next_1:
_default_36:
li $t1, 0xC1280000
mtc1 $t1, $f3
li $t2, 0xBFF33333
mtc1 $t2, $f4
mul.s $f5, $f3, $f4
sw $f5, -8($fp)
_switch_end_35:
li $t5, 10
beq null, $t5, _case_2
j _case_next_2
_case_2:
la $a0, _string_46
li $v0, 4
syscall
li $a0, 10
li $v0, 11
syscall
j _switch_end_43
_case_next_2:
_switch_end_43:
_etiqueta_end_else33:
# Aplicando actualización del for
lw $t0, 0($sp)
j _for_start_9
_for_end_10:
li $t7, 1

# Fin de la función _mi_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Inicio de la función _miOtraFun_
_miOtraFun_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t8, 10
mul $t9, null, 4
li $v0, 9
move $a0, $t9
syscall
move $t0, $v0
li $t1, 3
sw $t1, 0($t0)
li $t2, 2
li $t3, 2
li $t4, 3
li $t5, null, 4
li $v0, 9
move $a0, $t5
syscall
move $t6, $v0
li $t7, 3
sw $t7, 0($t6)
li $t8, 2
li $t9, 45
la $t0, _arr2_
sw $t9, 0($t0)
li $t0, 0xC0B33333
mtc1 $t0, $f6

# Fin de la función _miOtraFun_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra
