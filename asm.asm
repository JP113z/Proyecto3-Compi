.data

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
li $t0, 8
li $t1, 6
sgt $t2, $t0, $t1
bne $t2, $zero, _etiqueta_true_3
j _etiqueta_end_4
_etiqueta_true_3:
li $t0, 0x40B9999A
mtc1 $t0, $f12
cvt.s.w $f0, $f0
li $v0, 2
mtc1 $t0, $f12
syscall
li $t6, 8
move $t7, $t6
_etiqueta_end_4:
li $t8, 1
move $v0, $t8
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
