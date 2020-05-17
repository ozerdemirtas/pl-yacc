lex:
	lex catcat.l

yacc:
	yacc -d catcat.y	

com:
	gcc lex.yy.c y.tab.c -o prog -ll

clean:
	rm myprog
	rm lex.yy.c
	rm y.tab.c
	rm y.tab.h