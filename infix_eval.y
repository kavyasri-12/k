%{
#include<stdio.h>
void yyerror(char *s);
int flag=0;
%}
%token number
%left '+' '-'
%left '*' '/' '%'
%left '(' ')' '\n'
%%
E1:E {printf("valid\n");printf("res:%d\n",$$);flag=1;return 0;}
E:E '+' E {$$=$1+$3;}
E:E '-' E {$$=$1-$3;}
E:E '*' E {$$=$1*$3;}
E:E '/' E {$$=$1/$3;}
E:E '%' E {$$=$1%$3;}
E:'(' E ')' {$$=$2;}
E:number {$$=$1;}
%%
void main()
{
	printf("exp:");
	yyparse();
	if(flag==0)
	{
		printf("invalid\n");
	}
}
void yyerror(char *s)
{
}


