%{
#include<stdio.h>
%}
DIGIT [0-9]
LETTER [a-zA-Z]
IDENTIFIER {LETTER}({LETTER}|{DIGIT})*
KEYWORD "if"|"else"|"while"|"for"


%%
{KEYWORD} printf("keyword:%s\n",yytext);
{IDENTIFIER} printf("identifier:%s",yytext);
{DIGIT}+ printf("digits:%s\n",yytext);
%%
int yywrap(){
	return 1;
}
int main()
{
	yylex();
	return 0;
}



