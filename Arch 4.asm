.text

li $v0, 4
la $a0, ida
syscall

li $v0, 5
syscall  

#Idade

move $t0, $v0

srl $s0, $t0, 1
addi $s0, $s0 2

li $v0, 1
move $a0,$s0
syscall

# Marry

li $v0, 4
la $a0, marry
syscall

li $v0, 8
la $a0, resp
la $a1, 10
syscall   

li $v0, 4
la $a0, indep
syscall

# Data

li $v0, 1
move $a0,$s0
syscall

li $v0, 4
la $a0, barra
syscall

srl $t1,$t0 2
addi $t1, $t1,-4

li $v0, 1
move $a0,$t1
syscall

# Fim

li $v0, 4
la $a0, fim
syscall

.data

ida: .asciiz "Quantos anos você tem ?\n"

marry: .asciiz "\n Marry me ? <3 \n"

resp:.space 10

indep: .asciiz "\n Independentemente da sua resposta, iremos nos casar no dia: "

barra:.asciiz " do mês "

fim: .asciiz "\n Te espero no altar <3\n"

adv:.asciiz "\n ( Se a data não existir é porquê você é muito nova ou muito velha para mim ;-;)"

.text 

# adv

li $v0, 4
la $a0, adv
syscall
