%{
#include <stdio.h>
 void yyerror(char *);
 #include "y.tab.h" 
%}

%%
ifa		        printf("IF\n");
elsea			printf("ELSE\n");
wo                      printf("WHILE\n");

pr			printf("PRINT\n");
prif			printf("PRINTF\n");
prl			printf("PRINTLN\n");
r                       printf("RETURN\n");

sw                      printf("SWITCH\n");
cas                     printf("CASE\n");
def                     printf("DEFAULT\n");
br                      printf("BREAK\n");
cnti                    printf("CONTINUE\n");
try                     printf("TRY\n");
fetch                   printf("CATCH\n");
tw                      printf("THROW\n");
nreg                    printf("EXCEPTION\n");



right |
left                    printf("BOOL\n");
fl                      printf("FLOAT\n");
ch                      printf("CHRACTER\n");
NULL                    printf("NULL\n");
cs                      printf("CONSTANT\n");
int                     printf("INTEGER\n");
st                      printf("STRING\n");
dbl                     printf("DOUBLE\n");
bol                     printf("BOOLEAN\n");

\;;                     printf("AND\n");
\::                     printf("OR\n");

\L                      printf("LEFTPARENT\n");
\R                      printf("RIGHTPARENT\n");
\{                      printf("OBRACE\n");
\}                      printf("EBRACE\n");
\'                      printf("QUOTE\n");
\:                      printf("EOL\n");
\;                      printf("SEMICOLON\n");
\,                      printf("COMMA\n");
\?                      printf("COMMENT\n");
\|                      printf("ESCAPE\n");
\.                      printf("DOT\n");
 
\add                    printf("ADD\n");
\sub                    printf("SUBSTRACT\n");
\mult                   printf("MULTIPLICATION\n");
\divi                   printf("DIVISION\n");
\mod                    printf("MODULUS\n");

\es                     printf("EQUALS\n");
\es=                    printf("ISEQUAL\n");
\n=                     printf("NEQUALS\n");
\lt                     printf("LESSTHAN\n");
\gt                     printf("GREATERTHAN\n");
\esg                    printf("GTHANEQUALS\n");
\esl                    printf("LTHANEQUALS\n");
\JL                     printf("DOUBLEIMP\n");

\++                     printf("INCREMENT\n");
\--                     printf("DECREMENT\n");
\+=                     printf("ADDEQUAL\n");
\-=                     printf("SUBEQUAL\n");
\*=                     printf("MULTIPLYEQUAL\n");
\/=                     printf("DIVIDEEQUAL\n");
" "							printf("SPACE\n");

begin                   printf("BEGIN\n");
import                  printf("IMPORT\n");
main                    printf("MAIN\n");
new                     printf("NEW\n");
[a-zA-Z][a-zA-Z0-9]*    printf("WORD\n");
[0-9]*\.[0-9]{0,8}         printf("DOUBLENUM\n");
[0-9]*                  printf("NUMBER\n");
[ \t]+

. yyerror("invalid character");
%%
int yywrap(void) {
 return 1;
} 