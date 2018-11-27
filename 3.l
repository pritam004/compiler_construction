%{
	#include<stdio.h>
	int c=0,w=0,l=0;
%}
%%
\n { l++; w++;}
[\t ' '] w++;
[A-Z] c++;
[a-z] c++;
.;
%%
int main()
{
 char a[50],b[50],count=0;
 scanf("%s",a);
 yyin=fopen(a,"r");
 yylex();
 FILE *fp =fopen(a,"r");
 FILE * fp1=fopen("output.txt","w");
 while(fgets(b,sizeof(b),fp)!=NULL)
 {
	count ++;
	fprintf(fp1,"%d : %s ",count,b);
	}
	
	printf("\nthe count is\n");
	printf("\nword : %d",w);
	printf("\nline : %d",l);
	printf("\n character : %d",c);
}
int yywrap()
{
	return 1;
}