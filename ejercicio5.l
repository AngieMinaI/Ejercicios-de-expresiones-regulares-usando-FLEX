%{
#undef yywrap
#define yywrap() 1

/* Este es un programa que determina si el carácter ingresado es una letra minúscula,
   y lo convierte a mayúscula.
*/

#include <stdio.h>
#include <ctype.h>
#include <string.h>


%}

letraMin  [a-z]
letraMay  [A-Z]
digito    [0-9]

%%

{letraMin}*                     { for(int i = 0; i < strlen(yytext); i++)
                                printf("%c", toupper(yytext[i])); 
                                printf("\n"); }

{letraMay}*                     { for(int i = 0; i < strlen(yytext); i++)
                                printf("%c", tolower(yytext[i])); 
                                printf("\n"); }

({letraMin}|{letraMay})*        { for(int i = 0; i < strlen(yytext); i++)
                                printf("%c", toupper(yytext[i])); 
                                printf("\n"); 
                                for(int i = 0; i < strlen(yytext); i++)
                                printf("%c", tolower(yytext[i])); 
                                printf("\n"); }

({letraMin}|{letraMay}|{digito})* { for(int i = 0; i < strlen(yytext); i++)                                    
                                        if (isdigit(yytext[i]))
                                            printf("%c", yytext[i]);
                                        else
                                            printf("%c", toupper(yytext[i]));                                
                                printf("\n"); 

                                for(int i = 0; i < strlen(yytext); i++)                                    
                                        if (isdigit(yytext[i]))
                                            printf("%c", yytext[i]);
                                        else
                                            printf("%c", tolower(yytext[i]));                                                               
                                printf("\n"); }

.|*                             { printf("Otro caso:\n"); }

%%

int main(int argc, char *argv[])
{
    yylex();
    return 0;
}
