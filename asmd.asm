.data
_string_8: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_x50_: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_string_14: .asciiz "sdff"
_str2_: .asciiz "sdff"
_string_23: .asciiz "Hola mundo"
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
li $t11, 'a'
move $t12, $t11
li $t13, 0
la $a0, _str2_
li $v0, 4
syscall
li $t15, 0
lw $t16, _i_
li $t17, 4
lw $t18, _j_
lw $t20, _i_
lw $t22, _i_
move $a0, _string_23
li $v0, 4
syscall
lw $t24, _x22_
li.s $t25, -5.6
move $v0, $t25
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
lw $t26, _b1_
move $v0, $t26
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
li $t27, 0
li.s $t28, 56.6
move $t27, $t28
lw $t29, _fl1_
li $t31, -14
lw $t32, _in1_
li $t34, 7
li $t35, 15
sub $t36, $t34, $t35
la $t0, resultado
lw $t1, $t36
sw $t1, 0($t0)
div $t31, $t38
mflo $t39
la $t0, resultado
lw $t1, $t39
sw $t1, 0($t0)
move $t42, $t41
li.s $t43, 3.7
lw $t44, _fl1_
li.s $t45, 45.6
li $t46, 76
add $t48, $t44, $t47
la $t0, resultado
lw $t1, $t48
sw $t1, 0($t0)
la $t0, resultado
lw $t1, $t50
sw $t1, 0($t0)
move $t52, $t51
li $t53, 10
li.s $t54, 4.5
lw $t55, _miChar_
li.s $t56, -0.005
la $t0, _fl1_
lw $t1, $t58
sw $t1, 0($t0)
li $t59, 'a'
li.s $t60, 6.7
li.s $t61, 8.9
move $t63, $t62
lw $t64, _bl1_

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
