%{
int vc=0,cc=0;
%}
%%
[aeiouAEIOU] {vc++;}
[a-z A-Z] {cc++;}
%%
int yywrap(){}
int main()
{
	printf("enter:");
	yylex();
	printf("vowels=%d\n con=%d\n",vc,cc);
	return 0;
}
