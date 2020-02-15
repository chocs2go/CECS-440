.data 
array1: .word 1, 2, 3
.text
li x10, 0
la x22, array1

#put your code here

lw x1, 0(x22) #arrray 0
lw x2, 4(x22) #array 1
slli x2,  x2, 1 #shift left

add x4, x1, x2 # add x1 and x2 store in x5
 
lw x3, 8(x22) #array 2 
addi x3, x3, 45 #add 

add x5, x4, x3 # add x0 and x3 to x0
sw x5, 8(x22)

ecall