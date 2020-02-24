.data 
A: .word 0,1,2,3,4,5
B: .word 0,0,0,0,0,0
.text
li x5, 6 # m
li x6, 2 # n
la x10, A
la x11, B
li x7, 0 # i = 0
li x29, 0 # j = 0

# m=x5, n=x6, i=x7, j=x29
# A=x10, B=x11

loopi:
  #outer loop
      bge x7, x5, ENDi # if i > m, exit
      li x29, 0 # initialize j to 0
      

loopj:
  #inner loop
      bge x29, x6, loopi # if j > n, loopi
      lw x1, 0(x10) # load A to x1
      slli x2, x29, 2 # shift left 4
      add x3, x2, x1 # add A[i] and 4*j
      add x2, x3, x7 # add x3 and i
      

ENDj:
  #inner loop to outer loop
      addi x7, x7, 1
      sw x11, 4(x2) # store to B

ENDi:
  exit:
    nop