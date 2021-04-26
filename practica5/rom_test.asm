.text
#
	li t6, 0
	j main
comp: 	li t0,1				#me daba error en que tenía que modificar una cosa dentro de memory configuration
	li t5, 15
	beq a0,a1,true
false: 	sw t5, 0(t6)
	j return
true: 	sw t0, 0(t6)
	j return			#me daba error en que tenía que modificar una cosa dentro de memory configuration

return:	addi t6, t6, 4
	ret
main: 
#1)addi Sumar un número con una constante. Con este también comprobamos si funciona el restador porque si ponemos constante negativa es restador.
	addi a1,x0,5
	addi a0,x0,5
	jal comp
#add
	addi a1,x0,1
	addi a0,x0,4
	add a0,a0,a1
	addi a1,x0,5			#el resultado de sumar 1+4=5 por eso ponemos ahora el 5 para que después al comparar arriba esté bien.
	jal comp
#sub
	addi a1,x0,5
	addi a0,x0,3
	sub  a0, a1,a0
	addi a1,x0,2
	jal comp			#el resultado de hacer 5-3=2
	
#slti 	reg1<const1
	addi a1,x0,1
	addi a0,x0,4
	slti a0,a0,5	
	jal comp
#slt
	addi a1,x0,1
	addi a0,x0,4
	slt a0,a1,a0	
	addi a1,x0,1			#el resultado de hacer un slt 1<4 es 1 porque es verdad
	jal comp
#sltu
	addi a0,x0,1
	addi a1,x0,4
	sltu a0,a0,a1
	addi a1,x0,1			#el resultado de 1<4 es 1 
	jal comp
#sltiu reg1<const1
	addi a0,x0,1
	sltiu a0,a0,4
	addi a1,x0,1			#el resultado de 1<4 es 1 
	jal comp
#slli desplazamiento lógico a la izquierda
	addi a0,x0,4
	slli a0,a0,5			# al desplazar el número 4 0000000100 cinco posiciones es 128 10000000
	addi a1,x0,128
	jal comp
#sll
	addi a1,x0,2
	addi a0,x0,16
	sll a0,a0,a1
	addi a1,x0,64			#al desplazar el número 0000100 2 posiciones a la izquierda nos queda 01000000 64
	jal comp

#srli desplazamiento lógico a la derecha
	addi a1,x0,1
	addi a0,x0,16
	srli a0,a0,2
	addi a1,x0,4			#en este caso tenemos 16/2^2=4			
	jal comp
#srl
	addi a1,x0,16
	addi a0,x0,2
	srl a0,a1,a0
	addi a1,x0,4			#10000 se desplazan dos posiciones y queda 00100
	jal comp
#srai desplazamiento aritmetio a la derecha
	addi a1,x0,16
	addi a0,x0,16
	srai a0,a0,2
	addi a1,x0,4
	jal comp
#sra
	addi a1,x0,2
	addi a0,x0,32
	sra a0,a0,a1
	addi a1,x0,8			# 32/2^2=8
	jal comp
#xori
	addi a1,x0,1
	addi a0,x0,4
	xori a0,a0,5
	jal comp
#xor
	addi a1,x0,1
	addi a0,x0,4
	xor a0,a1,a0
	addi a1,x0,5			#al hacer el xor de 0001 y 0100 te queda 0101=5
	jal comp	
#ori
	addi a1,x0,1
	addi a0,x0,4
	ori a0,a0,5
	addi a1,x0,5			#al hacer el or de 0001 y 0100 te queda 0101 = 5
	jal comp
#or
	addi a1,x0,1
	addi a0,x0,4
	or a0,a0,a1
	addi a1,x0,5			#al hacer el or de 0001 y 0100 te queda 0101 = 5
	jal comp
#andi
	addi a1,x0,1
	addi a0,x0,4
	andi a0,a0,5
	addi a1,x0,4			#al hacer 0100 and 0101 es 4=0100
	jal comp
#and
	addi a1,x0,5
	addi a0,x0,4
	and a0,a0,a1
	addi a1,x0,4			#al hacer 0100 and 0101 es 4=0100
	jal comp