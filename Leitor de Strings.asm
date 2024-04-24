main
	ldi r5,str
	ldi lr,string1
	bnz r7,buffer
buffer
	ldb r1,r5
	stw r1,0xf000
	add r5,1
	ldi r2,32
	sub r4,r1,r2
	bez r4,test
	bnz r1,buffer
	bnz r7,lr
test
	ldb r1,r5
	stw r1,0xf000
	add r5,1
	sub r4,r1,r2
	bez r4,test
	push r2
	ldi r2,10
	sub r4,r1,r2
	pop r2
	bez r4, buffer

contador
	add r3,1
	bnz r7,buffer
string1
	add r3,1
	ldi r5,str2
	ldi lr,string2
	bnz r7,buffer
string2
	ldi r5,str3
	ldi lr,string3
	bnz r7,buffer
string3
	add r3,2
	stw r3,0xf002
	hcf

str  	"socorram-me subi no onibud em marrocos\n"
str2	"gana campeao de tudo\n"
str3	"antonio do inferno\n"
