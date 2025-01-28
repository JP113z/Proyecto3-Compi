.data
_string_8: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_x50_: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_string_16: .asciiz "sdff"
_str2_: .asciiz "sdff"
_string_25: .asciiz "Hola mundo"
_b1_: .asciiz " "

.text
.globl main
main:
j _verano_

# Inicio de la función _func1_
_func1_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
li $t1, 'a'
move $t2, $t1
li $t3, -1
move $t4, $t3
li $t5, 0
move $t6, $t5
li $t7, 1000
la $a0, _x50_
li $v0, 4
syscall
lw $t9, _x22_
li $t10, 45
lw $t11, _var_
li.s $t12, 5.6
li $t13, 'a'
move $t14, $t13
li $t15, 0
la $a0, _str2_
li $v0, 4
syscall
li $t17, 0
lw $t18, _i_
li $t19, 4
lw $t20, _j_
lw $t22, _i_
lw $t24, _i_
move $a0, _string_25
li $v0, 4
syscall
lw $t26, _x22_
li.s $t27, -5.6
move $v0, $t27
jr $ra

# Fin de la función _func1_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Inicio de la función _func2_
_func2_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp

# Fin de la función _func2_
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
jr $ra

# Inicio de la función _func3_
_func3_:
addi $sp, $sp, -8
sw $ra, 4($sp)
sw $fp, 0($sp)
move $fp, $sp
lw $t28, _b1_
move $v0, $t28
jr $ra

# Fin de la función _func3_
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
li $t29, 0
li.s $t30, 56.6
move $t29, $t30
lw $t31, _fl1_
li $t33, -14
lw $t34, _in1_
li $t36, 7
li $t37, 15
sub $t38, $t36, $t37
la $t0, resultado
lw $t1, $t38
sw $t1, 0($t0)
div $t33, $t40
mflo $t41
la $t0, resultado
lw $t1, $t41
sw $t1, 0($t0)
move $t44, $t43
li.s $t45, 3.7
lw $t46, _fl1_
li.s $t47, 45.6
li $t48, 76
add $t50, $t46, $t49
la $t0, resultado
lw $t1, $t50
sw $t1, 0($t0)
la $t0, resultado
lw $t1, $t52
sw $t1, 0($t0)
move $t54, $t53
li $t55, 10
li.s $t56, 4.5
lw $t57, _miChar_
li.s $t58, -0.005
la $t0, _fl1_
lw $t1, $t60
sw $t1, 0($t0)
li $t61, 'a'
li.s $t62, 6.7
li.s $t63, 8.9
move $t65, $t64
lw $t66, _bl1_

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
