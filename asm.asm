.data
_string_10: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_x50_: .asciiz "Hola a todos los que est abreempaque a cierraempaque  haciendo un compilador nuevo\n"
_string_11: .asciiz "sdff"
_str2_: .asciiz "sdff"
_string_12: .asciiz "Hola mundo"
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
li $t0, 'a'
move $t1, $t0
li $t2, -1
move $t3, $t2
li $t4, 0
move $t5, $t4
li $t6, 1000
mul $t7, null, 4
li $v0, 9
move $a0, $t7
syscall
move $t8, $v0
li $t9, 3
sw $t9, 0($t8)
la $a0, _x50_
li $v0, 4
syscall
lw $s0, _x22_
li $s1, 45
li $s2, 'a'
move $s3, $s2
li $s4, 0
la $a0, _str2_
li $v0, 4
syscall
li $s5, 0
lw $s6, _i_
li $s7, 4
addi $sp, $sp, -4
lw -4($sp), _j_
addi $sp, $sp, -4
addi $sp, $sp, -4
lw -12($sp), _i_
addi $sp, $sp, -4
addi $sp, $sp, -4
lw -20($sp), _i_
la $a0, _string_12
li $v0, 4
syscall
addi $sp, $sp, -4
lw -24($sp), _x22_
addi $sp, $sp, -4
li $t0, 0xC0B33333
mtc1 $t0, $f12
cvt.s.w $f0, $f0
move $v0, $f12
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
addi $sp, $sp, -4
lw -32($sp), _b1_
move $v0, -32($sp)
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
addi $sp, $sp, -4
li -36($sp), 0
addi $sp, $sp, -4
li $t0, 0x42626666
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
mov.s -44($sp), $f12
move -36($sp), -44($sp)
addi $sp, $sp, -4
lw -48($sp), _fl1_
addi $sp, $sp, -4
addi $sp, $sp, -4
li -56($sp), -14
addi $sp, $sp, -4
lw -60($sp), _in1_
addi $sp, $sp, -4
addi $sp, $sp, -4
li -68($sp), 7
addi $sp, $sp, -4
li -72($sp), 15
addi $sp, $sp, -4
sub -76($sp), -68($sp), -72($sp)
addi $sp, $sp, -4
move -80($sp), -76($sp)
addi $sp, $sp, -4
addi $sp, $sp, -4
addi $sp, $sp, -4
div -56($sp), -88($sp)
mflo -92($sp)
move -80($sp), -92($sp)
addi $sp, $sp, -4
addi $sp, $sp, -4
addi $sp, $sp, -4
move -104($sp), -100($sp)
addi $sp, $sp, -4
li $t0, 0x406CCCCD
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
lw -112($sp), _fl1_
addi $sp, $sp, -4
li $t0, 0x42366666
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
li -120($sp), 76
addi $sp, $sp, -4
addi $sp, $sp, -4
add -128($sp), -112($sp), -124($sp)
move -80($sp), -128($sp)
addi $sp, $sp, -4
addi $sp, $sp, -4
move -80($sp), -136($sp)
addi $sp, $sp, -4
addi $sp, $sp, -4
mov.s -144($sp), -140($sp)
addi $sp, $sp, -4
move -148($sp), -144($sp)
addi $sp, $sp, -4
li -152($sp), 10
addi $sp, $sp, -4
li $t0, 0x40900000
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
lw -160($sp), _miChar_
addi $sp, $sp, -4
li $t0, 0xBBA3D70A
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
addi $sp, $sp, -4
move -36($sp), -172($sp)
addi $sp, $sp, -4
li -176($sp), 'a'
addi $sp, $sp, -4
li $t0, 0x40D66666
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
li $t0, 0x410E6666
mtc1 $t0, $f12
cvt.s.w $f0, $f0
addi $sp, $sp, -4
addi $sp, $sp, -4
move -192($sp), -188($sp)
addi $sp, $sp, -4
lw -196($sp), _bl1_

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
