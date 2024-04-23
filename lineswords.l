%{
int lc=0,sc=0,tc=0,ch=0,c=0,wc=0;
%}
%%
\n {lc++;}
([ ])+ {sc++;}
\t {tc++;}
. {ch++;c++;}
[0-9a-zA-Z]+ {wc++;c=c+yyleng;}
%%
int yywrap(){}
int main()
{
	printf("e:");
	yylex();
	printf("line:%d",lc);
	printf("space:%d",sc);
	printf("tab:%d",tc);
	printf("char:%d",c);
	printf("words:%d",(wc+ch));
}
