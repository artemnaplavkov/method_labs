lw $s0,0 ($0)
lw $s1,4 ($0)
addi $s7,$0,0
addi $s4,$0,1
beq $s0, $s4, bfinish1 
beq $s1, $s4, bfinish2 
beq $s0, $s7, bfinish3 
beq $s1, $s7, bfinish3 
add $s2,$s0,$s0  
add $s6,$s4,$s4  
beq $s1, $s6, finish 
repeat:
add $s2,$s0,$s2 
add $s6,$s6,$s4 
beq $s1,$s6,finish 
j repeat 
bfinish1:
add $s2,$s7,$s1 
j finish
bfinish2:
add $s2,$s7,$s0 
j finish
bfinish3:
add $s2,$s7,$s7 
j finish 
finish:
sw $s2,8,($0) 