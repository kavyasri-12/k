#include<stdio.h>
#include<ctype.h>
void first(char[],char);
void addtoresult(char[],char);
int numofpro;
char proset[10][10];
int main()
{
	int i,choice;
	char c;
	char result[20];
	printf("how many productions:");
	scanf("%d",&numofpro);
	for(i=0;i<numofpro;i++)
	{
		printf("enter productions:",i+1);
		scanf("%s",proset[i]);
	}
	do
	{
		printf("find fisrt of:");
		scanf(" %s",&c);
		first(result,c);
		printf("\n first(%c)={ ",c);
		for(i=0;result[i]!='\0';i++)
		printf("%c",result[i]);
		printf("}\n");
		printf("press 1 to continue:");
		scanf("%d",&choice);
	}
	while(choice==1);
}
void first(char result[],char c)
{
	int i,j,k;
	char subresult[20];
	int foundepsilon=0;
	subresult[0]='\0';
	result[0]='\0';
	if(!(isupper(c)))
	{
		addtoresult(result,c);
		return;
	}
	for(i=0;i<numofpro;i++)
	{
		if(proset[i][0]==c)
		{
			if(proset[i][2]=='$')
			{
				addtoresult(result,'$');
			}
			else
			{
				j=2;
				while(proset[i][j]!='\0')
				{
					foundepsilon=0;
					first(subresult,proset[i][j]);
					for(k=0;subresult[k]!='\0';k++)
						addtoresult(result,subresult[k]);
					for(k=0;subresult[k]!='\0';k++)
						if(subresult[k]=='$')
						{
							foundepsilon=1;
							break;
						}
					if(!foundepsilon)
						break;
					j++;
					}
		}
				
	}
}
return;
}
void addtoresult(char result[],char val)
{
	int k;
	for(k=0;result[k]!='\0';k++)
		if(result[k]==val)
			return;
	result[k]=val;
	result[k+1]='\0';
}


















