%{
  #include<stdio.h>
  int nchar=0, nword=0, nline=0, keywords=0,identifier=0;
%}
%%
import|public|static|class { keywords++; }
[A-Za-z0-9]+ { identifier++;}
\n { nline++; nchar++; }
[^ \t\n]+ { nword++; nchar++;}
. { nchar++;}

%%
int yywrap()
{
return 1;
}
int main(void)
{
yyin = fopen("hello.java","r");
yylex();
printf("Number of characters: %d\n",nchar);
printf("Number of words: %d\n",nword);
printf("Number of lines: %d\n",nline);
printf("Number of keywords: %d\n",keywords);
printf("Number of identifier: %d\n",identifier);

return 0;
}
