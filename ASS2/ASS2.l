%{
//FILE *yyin;
%}
%%
import|int|char|float|double|System|out|print|println|class|public|static|void|main|String|args|java|util {printf("[KEYWORD]");}
[{};,()."!] {printf("[SEPARATOR]");}
[ \t]+ {printf("[SPACE]");}
[+ - * / %]+ {printf("[OPERATOR]");}
[A-Za-z0-9]+ {printf("[IDENTIFIER]");}
\n {printf("\n");}

%%
int yywrap()
{
	return 1;
}
int main(void)
{
	yyin = fopen("Temp.java","r");
	
	yylex();
	return 0;
}


