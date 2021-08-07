%{
#include<stdio.h>
%}
%%
int|float|char|double|while|for|do|if|break|continue|void|switch|case|long|struct|const|typedef|return|else {printf("keyword");}
\<=|\>=|\<|==|\> {printf("RELATIONAL OPERATOR ");}
[a-z _ A-Z]([a-z]|[A-Z]|[0-9])*   {printf("Indentifier");}
[0-9]*  {printf("Number");}
.*  {printf("Invalid");}
%%
main()
{
yylex();
return 0;
}
int yywrap()
{
return 0;
}
