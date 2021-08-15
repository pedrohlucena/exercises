algoritmo "semnome"
// Função :
// Autor :
// Data : 30/07/2021
// Seção de Declarações 
var
   t1, t2, C, n_termos: inteiro
   
funcao prox_elemento(var A,B: inteiro) : inteiro
// o var antes dos parâmetros faz a referência de t1 e t2 ser copiada para A e B
// A -> t1 . A (escopo local) faz referência à t1 (escopo global). Tudo que acontecer com A dentro da função acontecerá com t1 ao computador ler "fimfuncao"
// B -> t2 . B (escopo local) faz referência à t2 (escopo global). Tudo que acontecer com B dentro da função acontecerá com t2 ao computador ler "fimfuncao"

var
   novo_termo: inteiro

inicio
             novo_termo <- A + B // retorne o próximo elemento
             retorne novo_termo
             B <- A
             A <- novo_termo
fimfuncao

inicio
// Seção de Comandos 
         escreva("Quantos termos você deseja ver na sequência de Fibonacci? ")
         leia(n_termos)
         escreval("")
         
         t1 <- 1
         t2 <- -1
         
         para C <- 1 ate n_termos faca
              escreva(prox_elemento(t1,t2))
         fimpara
         
fimalgoritmo
