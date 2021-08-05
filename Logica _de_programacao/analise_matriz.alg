algoritmo "semnome"
// Função :
// Autor :
// Data : 05/08/2021
// Seção de Declarações 
var
   mat: vetor[1..4,1..4] de inteiro
   l,c: inteiro
   sDP, P2L, maior3C: inteiro
inicio
// Seção de Comandos 
         p2L <- 1
         para l <- 1 ate 4 faca
              para c <- 1 ate 4 faca
                   escreva("[", l, ",", c, "]: ")
                   leia(mat[l,c])
                   se (l = c) entao
                      sDP <- sDP + mat[l,c]
                   fimse
                   se (l = 2) entao
                      p2L <- p2L * mat[l,c]
                   fimse
                   se (c = 3) e (l = 1) entao
                      maior3C <- mat[l,c]
                   senao
                        se (c = 3) e (mat[l,c] > maior3C) entao
                           maior3C <- mat[l,c]
                        fimse
                   fimse
              fimpara
         fimpara
         
         limpatela
         escreval("MATRIZ FORMADA: ")
         para l <- 1 ate 4 faca
              para c <- 1 ate 4 faca
                   escreva(mat[l,c]:3)
              fimpara
              escreval()
         fimpara
         escreval("A soma dos valores da diagonal principal é: ",sDP)
         escreval("O produto entre os valores da segunda linha é: ",p2L)
         escreval("O maior valor da terceira coluna é: ",maior3C)
fimalgoritmo
