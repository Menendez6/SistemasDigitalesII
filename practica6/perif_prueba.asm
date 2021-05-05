# main program
main: 
li t0, 0x80000010 #addr PEP
lw t1, 0(t0) #leo los interruptores
li t0, 0x80000000 #addr PSP
sw t1, 0(t0) #escribo sobre los leds 
beq x0,x0, main 
# j main

