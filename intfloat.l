%{
int nint=0,nfloat=0;
%}
%%
[0-9]+"."[0-9]+ {nfloat++;}
[0-9]+ {nint++;}
%%
int yywrap(){}
int main()
{
	printf("en:");
	yylex();
	printf("nint=%d nfloat=%d",nint,nfloat);
	return 0;
}
