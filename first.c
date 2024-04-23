#include<stdio.h>
#include<ctype.h>
void first(char [],char);
void addtoresult(char [],char);
int numofprod;
char prodset[10][10];
int main()
{
	int i,choice;
	char c;
	char result[20];
	printf("enter no.of productions:");
	scanf("%d",&numofprod);
	for(i=0;i<numofprod;i++)
	{
		printf("enter productions:");
		scanf("%s",prodset[i]);
	}
	do
	{
		printf("what do u want:");
		scanf(" %s",&c);
		first(result,c);
		printf("\n first of(%c)",c);
		for(i=0;result[i]!='\0';i++)
		{
			printf("%c",result[i]);
		}
		printf("}\n");
		printf("press 1 to continue:");
		scanf("%d",&choice);
	}while(choice==1);	
}
void first(char result[],char c)
{
	int i,j,k;
	int foundep=0;
	char subresult[20];
	subresult[0]='\0';
	result[0]='\0';
	if(!(isupper(c)))
	{
		addtoresult(result,c);
		return;
	}
	for(i=0;i<numofprod;i++)
	{
		if(prodset[i][0]==c)
		{
			if(prodset[i][2]=='$')
			{
				addtoresult(result,'$');
			}
			else
			{
				j=2;
				while(prodset[i][j]!='\0')
				{
					foundep=0;
					first(subresult,prodset[i][j]);
					for(k=0;subresult[k]!='\0';k++)
					{
						addtoresult(result,subresult[k]);
					}
					for(k=0;subresult[k]!='\0';k++)
					{
						if(subresult[k]=='$')
						{
							foundep=1;
							break;
						}
					}
					if(!(foundep))
						break;
					j++;
				}
			}
		}
	}
}
void addtoresult(char result[],char val)
{
	int k;
	for(k=0;result[k]!='\0';k++)
	{
		if(result[k]==val)
			return;
	}
	result[k]=val;
	result[k+1]='\0';
}

