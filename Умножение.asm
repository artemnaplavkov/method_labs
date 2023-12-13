lw $s0,0 ($0)
lw $s1,4 ($0)
addi $s4,$0,1
add $s2,$s0,$s0
add $s6,$s4,$s4
beq $s1, $s6, finish
repeat:
add $s2,$s0,$s2
add $s6,$s6,$s4
beq $s1,$s6,finish
j repeat
finish:
sw $s2,8,($0)