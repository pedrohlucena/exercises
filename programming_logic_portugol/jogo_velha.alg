algoritmo "semnome"
// Função :
// Autor :
// Data : 09/08/2021
// Seção de Declarações 
var
   casas: vetor[1..3,1..3] de caractere
   l, c, cont, po: inteiro
   R: logico
   simb: caractere
   
procedimento mostrar_jogo()
inicio
      escreval("+---+---+---+")
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                escreva("|  ", casas[l,c])
           fimpara
           escreval("|")
           escreval("+---+---+---+")
      fimpara
      escreval("")
fimprocedimento

procedimento mudar_jogador()
inicio
      se (simb = "X") entao
         simb <- "O"
      senao
           simb <- "X"
      fimse
fimprocedimento

funcao jogar(S: caractere; P: inteiro) : logico
var
   disp: logico
inicio
      disp <- falso
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                se (casas[l,c] = numpcarac(P)) entao
                   disp <- verdadeiro
                   casas[l,c] <- S
                fimse
           fimpara
      fimpara

      retorne disp // a função retorna se a jogada que o usuário escolheu é válida ou não
fimfuncao

funcao terminou_jogo() : logico
var
   terminou: logico
   ocorr: inteiro
inicio
      terminou <- falso
      // jogos em linha
      para l <- 1 ate 3 faca
           se (casas[l,1] = casas[l,2]) e (casas[l,2] = casas[l,3]) entao
              terminou <- verdadeiro
           fimse
      fimpara
      
      // jogos em coluna
      para c <- 1 ate 3 faca
           se (casas[1,c] = casas[2,c]) e (casas[2,c] = casas[3,c]) entao
              terminou <- verdadeiro
           fimse
      fimpara
      
      // jogos em diagonal
      se (casas[1,1] = casas[2,2]) e (casas[2,2] = casas[3,3]) entao
         terminou <- verdadeiro
      fimse
      
      se (casas[1,3] = casas[2,2]) e (casas[2,2] = casas[3,1]) entao
         terminou <- verdadeiro
      fimse
      
      // jogos em velha
      ocorr <- 0
      para l <- 1 ate 3 faca
           para c <- 1 ate 3 faca
                se (casas[l,c] <> "X") e (casas[l,c] <> "O") entao
                   ocorr <- ocorr + 1
                fimse
           fimpara
      fimpara
      
      se (ocorr = 0) entao
         terminou <- verdadeiro
      fimse
      
      retorne terminou
fimfuncao

inicio
// Seção de Comandos 
         cont <- 1
         simb <- "X"
         para l <- 1 ate 3 faca
              para c <- 1 ate 3 faca
                   casas[l,c] <- numpcarac(cont)
                   cont <- cont + 1
              fimpara
         fimpara
         mostrar_jogo()
         
         repita
               repita
                     escreva("Quer colocar o {", simb, "} onde? ")
                     leia(po)
                     R <- jogar(simb,po)
                     se (R = falso) entao
                        escreval("JOGADA INVÁLIDA!")
                     fimse
               ate (R = verdadeiro) // o programa só segue se o usuário digitar uma jogada válida
               mudar_jogador()
               limpatela
               mostrar_jogo()
         ate (terminou_jogo() = verdadeiro)
         escreval("JOGO FINALIZADO!")
fimalgoritmo
