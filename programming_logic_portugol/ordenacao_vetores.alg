algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 03/08/2021
// Se��o de Declara��es 
var
   valores: vetor[1..6] de inteiro // var composta
   i,j,aux: inteiro // var simples
inicio
// Se��o de Comandos 
         // leitura dos valores
         para i <- 1 ate 6 faca
              escreva(i, "� n�mero: ")
              leia(valores[i])
         fimpara
         
         limpatela
         // apresenta��o dos resultados sem ordena��o
         escreval("SEM ORDENA��O")
         para i <- 1 ate 6 faca
              escreval(valores[i], ".. ")
         fimpara
         
         // ordena��o do vetor
         para i <- 1 ate 5 faca // n�mero de casas a serem analisadas
              para j <- i+1 ate 6 faca // j nos auxilia a pegar a pr�xima casa
                   se (valores[i] > valores[j]) entao // se a casinha atual for maior que a pr�xima casinha
                      aux <- valores[i]
                      valores[i] <- valores[j] // troque as duas
                      valores[j] <- aux
                   fimse
              fimpara
         fimpara
         
         escreval("")
         // apresenta��o dos resultados j� ordenados
         escreval("COM ORDENA��O")
         para i <- 1 ate 6 faca
              escreval(valores[i], ".. ")
         fimpara
fimalgoritmo
