algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 04/08/2021
// Se��o de Declara��es 
var
   c1,c2: inteiro // nossas var de controle
   nome_time: vetor[1..3] de caractere
inicio
// Se��o de Comandos
         // leitura dos nomes dos times
         para c1 <- 1 ate 3 faca // quero ler 3 times
              escreva(c1, "� time: ")
              leia(nome_time[c1])
              nome_time[c1] <- maiusc(nome_time[c1])
         fimpara
         
         // apresenta��o da tabela de resultados
         limpatela
         escreval(" ======== TABELA DE RESULTADOS ======== ")
         para c1 <- 1 ate 3 faca // pega cada um dos 3 times digitados
              para c2 <- 1 ate 3 faca // pega cada um dos 3 times
                   se (c1 <> c2) entao // essa condi��o evita que um time jogue contra ele mesmo
                      escreval(nome_time[c1]:15, "[  ] x [  ] ", nome_time[c2])
                   fimse
              fimpara
         fimpara
fimalgoritmo
