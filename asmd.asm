.data
_string_1: .asciiz "hola mundo"

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
la $a0, _string_1
li $v0, 4
syscall
li $t2, 'd'
move $a0, $t2
li $v0, 11
syscall
li $t3, 100
move $a0, $t3
li $v0, 1
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
