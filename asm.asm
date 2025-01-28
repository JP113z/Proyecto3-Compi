.data
_string_: .asciiz " "
_string_5: .asciiz "hola"
_string2_: .asciiz "hola"

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
li $t1, 0
li $t2, 0
li $t3, 4
move $t4, $t3
la $a0, _string2_
li $v0, 4
syscall
li $t6, 1
move $v0, $t6
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall