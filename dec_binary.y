%{
#include<stdio.h>
void yyerror(char *s);
%}
%token digit
%%
S:L {$$=$1;printf("count:%d\n",$$);return 0;}
L:L B {$$=2*$1+$2;}
L:B {$$=$1;}
B:digit {$$=$1;}
%%
void main()
{
	yyparse();
}
void yyerror(char *s)
{
	
}

