algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 03/08/2021
// Se��o de Declara��es 
var
   valores: vetor[1..10] de inteiro
   i,j,aux: inteiro
inicio
// Se��o de Comandos 
         // leitura dos valores
         para i <- 1 ate 10 faca
              escreva(i, "� valor: ")
              leia(valores[i])
         fimpara
         
         limpatela
         // apresenta��o dos valores desordenados
         escreval("VALORES DESORDENADOS")
         para i <- 1 ate 10 faca
                escreva(valores[i], ".. ")
         fimpara
         escreval("")
         
         // ordena��o dos valores. l�gica da ordena��o:
         // se o valor seguinte for maior que o atual
         // o valor atual recebe o valor seguinte
         // o valor seguinte recebe o antigo atual
         
         para i <- 1 ate 9 faca // quero comparar 9 casas
              para j <- i+1 ate 10 faca // com 10 casas
                   se (valores[j] > valores[i]) entao
                      aux <- valores[i]
                      valores[i] <- valores[j]
                      valores[j] <- aux
                   fimse
              fimpara
         fimpara
         
         // apresenta��o do resultado j� ordenado
         escreval("")
         escreval("Valores ORDENADOS EM ORDEM CRESCENTE")
         para i <- 1 ate 10 faca
              escreva(valores[i], ".. ")
         fimpara
fimalgoritmo
