algoritmo "semnome"
// Função :
// Autor :
// Data : 04/08/2021
// Seção de Declarações 
var
   c1, num_cad: inteiro
   cadeiras: vetor[1..10] de caractere
   resp: caractere

procedimento mostrartela()
inicio
      para c1 <- 1 ate 10 faca // vai testar pra todos os assentos
           se (cadeiras[c1] = "") entao
              escreva("[ B", c1, " ] ")
           senao
                escreva("[ --- ] ")
           fimse
      fimpara
      escreval("")
fimprocedimento

inicio
// Seção de Comandos 
         repita
               mostrartela()
               escreva("Qual assento você deseja reservar? B")
               leia(num_cad)
               se (cadeiras[num_cad] = "") entao
                  cadeiras[num_cad] <- "X"
                  escreval("ASSENTO B", num_cad, " RESERVADO!")
               senao
                    escreval("ERRO! O ASSENTO B", num_cad, " JÁ FOI RESERVADO!")
               fimse
               escreva("Deseja reservar outro assento? [S/N]: ")
               leia(resp)
               limpatela
         ate (resp = "N")
fimalgoritmo
