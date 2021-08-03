algoritmo "semnome"
// Função :
// Autor :
// Data : 03/08/2021
// Seção de Declarações 
var
   valores: vetor[1..6] de inteiro // var composta
   i,j,aux: inteiro // var simples
inicio
// Seção de Comandos 
         // leitura dos valores
         para i <- 1 ate 6 faca
              escreva(i, "° número: ")
              leia(valores[i])
         fimpara
         
         limpatela
         // apresentação dos resultados sem ordenação
         escreval("SEM ORDENAÇÃO")
         para i <- 1 ate 6 faca
              escreval(valores[i], ".. ")
         fimpara
         
         // ordenação do vetor
         para i <- 1 ate 5 faca // número de casas a serem analisadas
              para j <- i+1 ate 6 faca // j nos auxilia a pegar a próxima casa
                   se (valores[i] > valores[j]) entao // se a casinha atual for maior que a próxima casinha
                      aux <- valores[i]
                      valores[i] <- valores[j] // troque as duas
                      valores[j] <- aux
                   fimse
              fimpara
         fimpara
         
         escreval("")
         // apresentação dos resultados já ordenados
         escreval("COM ORDENAÇÃO")
         para i <- 1 ate 6 faca
              escreval(valores[i], ".. ")
         fimpara
fimalgoritmo
