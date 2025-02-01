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
li $t0, 0x41266666
mtc1 $t0, $f0
li $t1, 0x40600000
mtc1 $t1, $f1
c.le.s $f0, $f1
li.s $f0, 0.0
mov.s $f2, $f0
bc1f label_true_
li.s $f0, 1.0
mov.s $f2, $f0
label_true_:
addi $sp, $sp, -4
swc1 $f2, -4($fp)
lwc1 $f3, -4($fp)
li $v0, 2
mov.s $f12, $f3
syscall
li $t3, 1
move $v0, $t3
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
