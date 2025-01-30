.data
_string_1: .asciiz "Probando if2"
_var1_: .asciiz "Probando if2"

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
la $a0, _var1_
li $v0, 4
syscall
li $t2, 0
li $t3, 10
move $t2, $t3
lw $t4, _var1_
la $a0, $t4
li $v0, 4
syscall
li $t5, 1
move $v0, $t5
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
