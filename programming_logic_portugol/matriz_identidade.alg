algoritmo "semnome"
// Função :
// Autor :
// Data : 05/08/2021
// Seção de Declarações 
var
   matID: vetor[1..4, 1..4] de inteiro
   l,c: inteiro
inicio
// Seção de Comandos 
         para l <- 1 ate 4 faca
              para c <- 1 ate 4 faca
                   se (l = c) entao
                      matID[l,c] <- 1
                      escreva(matID[l,c]:3)
                   senao
                        matID[l,c] <- 0
                        escreva(matID[l,c]:3)
                   fimse
              fimpara
              escreval()
         fimpara
fimalgoritmo
