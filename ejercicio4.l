%{
#undef yywrap
#define yywrap() 1

/* Este es un programa que determina si el carácter ingresado es una letra minúscula,
   y lo convierte a mayúscula.
*/

#include <stdio.h>
#include <ctype.h>

%}

minusculas  [a-z]
mayusculas  [A-Z]

%%

{minusculas}        { printf("La letra en mayuscula es [%c]\n", toupper(yytext[0])); 
                      printf("Ingrese una nueva línea: "); }

{mayusculas}        { printf("La letra en minuscula es [%c]\n", tolower(yytext[0])); 
                      printf("Ingrese una nueva línea: "); }

.                   { printf("La letra es [%c]\n", yytext[0]); 
                      printf("Ingrese una nueva línea: "); }

%%

int main(int argc, char *argv[])
{
    yylex();
    return 0;
}
