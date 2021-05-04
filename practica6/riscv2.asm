# prueba LUI + addi
li t0 , 0x12345678
# Ahora carga la misma constante con addi+shift
addi t1 , zero , 0x123
slli t1 , t1 , 20
addi t2 , zero , 0x456
slli t2 , t2 , 8
or t1 , t2 , t1
ori t1 , t1 , 0x78
beq t0 , t1 , lui_arith_ok
err_lui_arith :
	j err_lui_arith
lui_arith_ok :
	j lui_arith_ok
# Resto del programa de prueba
