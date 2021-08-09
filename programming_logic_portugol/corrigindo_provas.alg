algoritmo "semnome"
// Função :
// Autor :
// Data : 03/08/2021
// Seção de Declarações 
var
   c1,c2: inteiro
   gabarito: vetor[1..10] de caractere
   nome: vetor[1..3] de caractere
   media_sala: real
   pontos_aluno: vetor[1..3] de inteiro
   resposta: vetor[1..10] de caractere
inicio
// Seção de Comandos 
         // cadastro do gabarito
         escreval("PASSO 1 - CADASTRO DO GABARITO")
         escreval("==================================")
         para c1 <- 1 ate 10 faca
              escreva(c1, "° questão: ")
              leia(gabarito[c1])
         fimpara
         
         // menu e perguntar nome do aluno
         limpatela
         escreval("O GABARITO FOI CADASTRADO COM SUCESSO!")
         escreval("Prosseguiremos com o cadastro dos alunos.")
         escreval("")
         para c1 <- 1 ate 3 faca
              escreval(" ===== ALUNO ", c1, " ===== ")
              escreva("Nome do aluno: ")
              leia(nome[c1])
              para c2 <- 1 ate 10 faca
                   escreva("Questão ", c2, ": ")
                   leia(resposta[c2])
                   se (resposta[c2] = gabarito[c2]) entao
                      pontos_aluno[c1] <- pontos_aluno[c1] + 1
                   fimse
              fimpara
              limpatela
         fimpara
         
         media_sala <- (pontos_aluno[1] + pontos_aluno[2] + pontos_aluno[3]) / (3)
         
         escreval(" ===== NOTA FINAL DOS ALUNOS ===== ")
         para c1 <- 1 ate 3 faca
              escreval(nome[c1]:15, pontos_aluno[c1]:4:2)
         fimpara
         escreval("A média da sala foi: ", media_sala:4:2)
                 
fimalgoritmo
