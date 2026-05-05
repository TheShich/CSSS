ORG 33282
loop:   LD L,A
	XOR A
	LD BC,256
	LD H,5Bh
	LD DE,22784
	LDIR
	IN A,(254)
	LD E,A
	EX AF,AF
	XOR E
	RRA
	SBC A,C
	ADD A,L
	RET Z
	JR loop
