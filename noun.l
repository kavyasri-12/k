%{
#include<stdio.h>
#include<string.h>
%}
%%
"he"|"she"|"it" {printf("pronouns:%s\n",yytext);}
"cat"|"bat"|"dog" {printf("noun:%s\n",yytext);}
"sleep"|"eat" {printf("verb:%s\n",yytext);}
%%
int yywrap(){}
int main()
{
	printf("enter:");
	yylex();
}
