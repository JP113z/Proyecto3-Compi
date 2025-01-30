.data
_string_: .asciiz " "
_string_9: .asciiz "hola"
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
li $t0, 0
li $t1, 0
li $t2, 4
move $t3, $t2
li $t4, 2
li $t5, 2
add $t6, $t4, $t5
move $t7, $t6
la $a0, _string2_
li $v0, 4
syscall
li $s0, 1
move $v0, $s0
jr $ra

# Fin del main (_verano_)
move $sp, $fp
lw $ra, 4($sp)
lw $fp, 0($sp)
addi $sp, $sp, 8
li $v0, 10
syscall
