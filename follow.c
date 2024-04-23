#include<stdio.h>
#include<ctype.h>
#include<string.h>
int n,m;
char prodset[10][10];
char result[10];
void follow(char c);
void first(char c);
void addtoresult(char val);
int main()
{
	int i,choice;
	char c;
	printf("enter n:");
	scanf("%d",&n);
	for(i=0;i<n;i++)
	{
		printf("enter prod:");
		scanf("%s",prodset[i]);
	}
	do
	{
		m=0;
		printf("enter u want:");
		scanf(" %s",&c);
		follow(c);
		printf("\n first of {",c)
		for(i=0;i<m;i++){
			printf("%c",result[i]);
		}
		printf("}\n");
		printf("enter choice:");
		scanf("%d",&choice);
	}while(choice==1);
}
void follow(char c)
{
	int i,j;
	if(prodset[0][0]==c)
	{
		addtoresult('$');
		return;	
	}
	for(i=0;i<n;i++)
	{
		for(j=2;j<strlen(prodset[i]);j++)
		{
			if(prodset[i][j]==c)
			{
				if(prodset[i][j+1]!='\0')
				{
						First(pro[i][j+1]);
				}
					if(prodset[i][j+1]!='\0')
				{
						Follow(pro[i][j+1]);
				}
			}
		}
	}
}
void first(char c)
{
	int i,j,k;
	if(!(isupper(c)))
	{
		addtoresult(c);
		return;
	}
	for(i=0;i<n;i++)
	{
		if(prodset[i][0]==c)
		{
			if(prodset[i][2]=='$')
			{
				follow(prodset[i][0]);
			}
			if(islower[i][2])
			{
				addtoresult(prodset[i][2]);
			}
			else
			{
				first(prodset[i][2]);
			}
		}
	}
}
void addtoresult(char val)
{
	int k;
	for(k=0;k<m;k++)
	{
		if(result==k)
		{
			return;
		}
	}
	result[m++]=val;
}
