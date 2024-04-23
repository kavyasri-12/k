%{
#include<stdio.h>
%}
%%
[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,} printf("email:%s",yytext);
%%
int yywrap(){}
int main()
{
	yylex();
	return 0;
}
