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
li $t0, 0x40A00000
mtc1 $t0, $f0
li $t1, 0x40000000
mtc1 $t1, $f1
li.s $f2, 1.0
li.s $f4, 0.0
c.eq.s $f1, $f4
bc1t pow_end_3
mov.s $f3, $f1
li.s $f5, 1.0
pow_loop_2:
mul.s $f2, $f2, $f0
sub.s $f3, $f3, $f5
c.le.s $f3, $f4
bc1t pow_end_3
b pow_loop_2
pow_end_3:
addi $sp, $sp, -4
swc1 $f2, -4($fp)
lwc1 $f6, -4($fp)
li $v0, 2
mov.s $f12, $f6
syscall
li $t4, 1
move $v0, $t4
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
