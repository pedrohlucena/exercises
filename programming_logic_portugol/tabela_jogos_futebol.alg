algoritmo "semnome"
// Função :
// Autor :
// Data : 04/08/2021
// Seção de Declarações 
var
   c1,c2: inteiro // nossas var de controle
   nome_time: vetor[1..3] de caractere
inicio
// Seção de Comandos
         // leitura dos nomes dos times
         para c1 <- 1 ate 3 faca // quero ler 3 times
              escreva(c1, "° time: ")
              leia(nome_time[c1])
              nome_time[c1] <- maiusc(nome_time[c1])
         fimpara
         
         // apresentação da tabela de resultados
         limpatela
         escreval(" ======== TABELA DE RESULTADOS ======== ")
         para c1 <- 1 ate 3 faca // pega cada um dos 3 times digitados
              para c2 <- 1 ate 3 faca // pega cada um dos 3 times
                   se (c1 <> c2) entao // essa condição evita que um time jogue contra ele mesmo
                      escreval(nome_time[c1]:15, "[  ] x [  ] ", nome_time[c2])
                   fimse
              fimpara
         fimpara
fimalgoritmo
