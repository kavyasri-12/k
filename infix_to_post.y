%{
#include<stdio.h>
void yyerror(char *s);
%}
%token id
%left '+' 
%left '-'
%left '*' 
%left '/'
%%
E1:E '\n' {return 0;}
E1:E {};
E:E '+' T {printf("+");}
E:E '-' T {printf("-");}
E:T {};
T:T '*' F {printf("*");}
T:T '/' F {printf("/");}
T:F {};
F:id {printf("%d",$$);}
%%
void main()
{
	yyparse();
}
void yyerror(char *s)
{
}
