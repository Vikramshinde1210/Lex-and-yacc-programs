%{
#include<stdio.h>
%}

%token dt sp id sc


%% 
S: dt sp id sc {printf("valid string");};

%%

int yyerror(char *msg)
{
printf("invalid string");

}

int main(){
printf("Enter string :");
yyparse();
}
