algoritmo "semnome"
// Fun��o :
// Autor :
// Data : 06/08/2021
// Se��o de Declara��es 
var
   c,l, opcao: inteiro
   mat: vetor[1..4,1..4] de inteiro
   resp: caractere
   
procedimento mat_inteira()
inicio
      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                escreva(mat[l,c]:3)
           fimpara
           escreval()
      fimpara
fimprocedimento

procedimento diag_princ()
inicio
      para l <- 1 ate 4 faca
           para c <- 1 ate 4 faca
                se (l = c) entao
                   escreva(mat[l,c]:3)
                senao
                     escreva("   ")
                fimse
           fimpara
           escreval()
      fimpara
fimprocedimento

procedimento tri_sup()
var
   t: inteiro

inicio
      para l <- 1 ate 3 faca
           escreva("   ")
           para c <- l+1 ate 4 faca
                escreva(mat[l,c]:3)
           fimpara
           escreval()
           para t <- 1 ate l faca
                escreva("   ")
           fimpara
      fimpara
fimprocedimento

procedimento tri_inf()
inicio
      para l <- 2 ate 4 faca
           para c <- 1 ate l-1 faca
                escreva(mat[l,c])
           fimpara
           escreval()
      fimpara
fimprocedimento

inicio
// Se��o de Comandos 
         para l <- 1 ate 4 faca
              para c <- 1 ate 4 faca
                   escreva("[", l, ",", c, "]: ")
                   leia(mat[l,c])
              fimpara
         fimpara
         
         limpatela
         repita
               escreval("Qual a visualiza��o voc� deseja ver da matriz digitada, digite:")
               escreval("[1] para ver a matriz inteira")
               escreval("[2] para ver a diagonal principal")
               escreval("[3] para ver o tri�ngulo superior")
               escreval("[4] para ver o tri�ngulo inferior")
               escreval("[5] para sair")
               escreva("Sua op��o: ")
               leia(opcao)
               escolha opcao
                       caso 1
                            mat_inteira()
                       caso 2
                            diag_princ()
                       caso 3
                            tri_sup()
                       caso 4
                            tri_inf()
                       caso 5
                            escreval("ENCERRANDO..")
                       outrocaso
                                escreval("OP��O INV�LIDA! Tente novamente.")
               fimescolha
               escreval()
               escreva("Deseja ver outra visualiza��o dessa mesma matriz? [S/N]: ")
               leia(resp)
               resp <- maiusc(resp)
               limpatela
         ate (resp = "N")
fimalgoritmo
