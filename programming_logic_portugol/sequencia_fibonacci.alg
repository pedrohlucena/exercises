algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 30/07/2021
// Se��o de Declara��es 
var
   t1, t2, C, n_termos: inteiro
   
funcao prox_elemento(var A,B: inteiro) : inteiro
// o var antes dos par�metros faz a refer�ncia de t1 e t2 ser copiada para A e B
// A -> t1 . A (escopo local) faz refer�ncia � t1 (escopo global). Tudo que acontecer com A dentro da fun��o acontecer� com t1 ao computador ler "fimfuncao"
// B -> t2 . B (escopo local) faz refer�ncia � t2 (escopo global). Tudo que acontecer com B dentro da fun��o acontecer� com t2 ao computador ler "fimfuncao"

var
   novo_termo: inteiro

inicio
             novo_termo <- A + B // retorne o pr�ximo elemento
             retorne novo_termo
             B <- A
             A <- novo_termo
fimfuncao

inicio
// Se��o de Comandos 
         escreva("Quantos termos voc� deseja ver na sequ�ncia de Fibonacci? ")
         leia(n_termos)
         escreval("")
         
         t1 <- 1
         t2 <- -1
         
         para C <- 1 ate n_termos faca
              escreva(prox_elemento(t1,t2))
         fimpara
         
fimalgoritmo
