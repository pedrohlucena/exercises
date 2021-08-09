algoritmo "semnome"
// Função :
// Autor :
// Data : 02/08/2021
// Seção de Declarações 
var
   nome: vetor[1..4] de caractere
   n1: vetor[1..4] de real
   n2: vetor[1..4] de real
   media: vetor[1..4] de real
   i, acima_media: inteiro
   media_sala, soma_medias: real
inicio
// Seção de Comandos
         para i <- 1 ate 4 faca
              escreval(" ========== ALUNO ", i, " ========== ")
              escreva("Digite seu nome: ")
              leia(nome[i])
              escreva("Primeira nota: ")
              leia(n1[i])
              escreva("Segunda nota: ")
              leia(n2[i])
              media[i] <- (n1[i]+n2[i])/2
              escreval("")
              soma_medias <- soma_medias + media[i]
         fimpara
         media_sala <- soma_medias/4
         
         limpatela
         escreval(" ========== LISTAGEM DE ALUNOS ========== ")

         para i <- 1 ate 4 faca
              escreval(nome[i]:15, media[i]:4:2)
              se (media[i] > media_sala) entao
                 acima_media <- acima_media + 1
              fimse
         fimpara
         escreval("")
         escreval("Há ", acima_media, " alunos acima da média da sala que é ", media_sala:4:2)
fimalgoritmo
