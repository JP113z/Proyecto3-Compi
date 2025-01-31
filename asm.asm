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
li $t0, 5
li $t1, 10
add $t2, $t0, $t1
li $t4, 0x41771EB8
mtc1 $t4, $f5
li $t6, 0x3F9DF3B6
mtc1 $t6, $f7
c.le.s $f5, $f7
li $t0, 1
move $v0, $t0
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
