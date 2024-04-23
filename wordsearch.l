%{
#include<stdio.h>
#include<string.h>
%}

%%
[a-zA-Z]+ {check(yytext);}
%%

void check(char *s)
{
   FILE *fp;
   char temp[20];
   fp=fopen("input.txt","r");
   while(fscanf(fp,"%s",temp)!=EOF)
   {
      if((strcmp(s,temp)==0))
      {
         printf("found");
         return;
      }
  }
  printf("not found");
  }
  int yywrap(){}
  int main()
  {
     yylex();
  }
