%{
#include<stdio.h>
int length;
%}
%%
[0-9a-zA-Z]+ {length=yyleng;fun(length);}
%%
fun(int l)
{
	if(yytext[0]=='A')
	{
		if(length==3)
		{
			printf("%s word length 3",yytext);
		}
	}
}
int yywrap(){};
int main()
{
	printf("ent:");
	yylex();
	return 0;
}
