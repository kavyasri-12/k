%{
#include<stdio.h>
void yyerror(char *s);
int flag=0;
int count=0;
%}
%token '(' ')' '\n'
%%
N:L '\n' {printf("valid\n");printf("%d",count);flag=1;return 0;}
L:L '(' L ')' {count=count+1;}
L: {}
;
%%
void main()
{
	yyparse();
	if(flag==0)
	{
		printf("invalid\n");
	}
}
void yyerror(char *s)
{
}
