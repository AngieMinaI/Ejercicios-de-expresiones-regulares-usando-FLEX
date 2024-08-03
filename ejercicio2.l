%{
#undef yywrap
#define yywrap() 1

/* Este es un programa en Lex que identifica líneas.
*/

#include <stdio.h>
%}
letrami  [a-z]
letrama [A-Z]
digito  [0-9]
simbolo [%/#!()?¿&]

%%
{letrami}.*\n  { printf("La linea empieza con una letra minuscula \n"); printf("Ingrese una nueva linea: "); }
{letrama}.*\n  { printf("La linea empieza con una letra mayuscula \n"); printf("Ingrese una nueva linea: "); }
{digito}.*\n   { printf("La linea debe empezar con una letra mayuscula o minuscula\n"); printf("Ingrese una nueva linea: "); }
{simbolo}.*\n   { printf("La linea debe empezar con una letra mayuscula o minuscula\n"); printf("Ingrese una nueva linea: "); }

%%
int main(int argc, char *argv[])
{
    yylex();
    return 0;
}
