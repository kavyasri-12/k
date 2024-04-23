%{
#include<stdio.h>
%}
%%
(https?|ftp):\/\/[^\s/$.?#].[^\s]* printf("URL:%s\n",yytext);
. ;
%%
int yywrap(){};
int main()
{
	yylex();
	return 0;
}
