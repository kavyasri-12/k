%{
#include<stdio.h>
int length;
%}
%%
. {length+=yyleng;}
%%
int yywrap(){}
int main()
{
	yylex();
	printf("len:%d",length);
	return 0;
}
