%{
#include "y.tab.h"
%}

%%
int|char|long|double {return dt;}
[a-zA-Z0-9]+ {return id;}
[;] {return sc;}
[ ] {return sp;}
%%

int yywrap()
{
return 1;
}
