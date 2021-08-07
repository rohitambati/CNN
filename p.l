
%{
#include<stdio.h>
#include "p.tab.h"
%}
%%
[0-9]+ {yylval.dval=atof(yytext);
return DIGIT;
}
\n|. return yytext[0];
%%
int yywrap(){return(1);}