algoritmo "Pares e ímpares em um intervalo"
// Função :
// Autor :
// Data : 27/07/2021
// Seção de Declarações 
var
   f,i: inteiro
   opcao, C: inteiro
inicio
// Seção de Comandos 
         // Ler início e fim de um intervalo e perguntar ao usuário se ele quer ver os números pares ou ímpares, dentro daquele intervalo
         // O programa deve funcionar para contagens progressivas / negativas
         escreva("Início do intervalo: ")
         leia(i)
         escreva("Fim do intervalo: ")
         leia(f)
         escreval("Você quer ver os pares ou ímpares entre ", i, " e ", f, "? Digite:")
         escreval("[1] para PARES")
         escreval("[2] para ÍMPARES")
         escreva("Sua opção: ")
         leia(opcao)
         
         se (f > i) entao // contagem progressiva
            escolha opcao
                    caso 1 // ele quer ver os pares
                         se (i % 2 = 0) entao // i é par
                            para C <- i ate f passo 2 faca
                                 escreval(C , ".. ")
                            fimpara
                         senao // i é impar
                               i <- i + 1
                               para C <- i ate f passo 2 faca
                                    escreva(C, ".. ")
                               fimpara
                         fimse
                    caso 2 // ele quer ver os ímpares
                         se (i % 2 = 0) entao // i é par
                            i <- i + 1
                            para C <- i ate f passo 2 faca
                                 escreva(C, ".. ")
                            fimpara
                         senao // i é impar
                               para C <- i ate f passo 2 faca
                                    escreva(C, ".. ")
                               fimpara
                         fimse
                    outrocaso // opção inválida
                              escreva("Opção inválida!")
            fimescolha
         senao
              se (i > f) entao // contagem regressiva
                 escolha opcao
                         caso 1 // ele quer ver os pares
                              se (i % 2 = 0) entao // i é par
                                 para C <- i ate f passo -2 faca
                                      escreva(C, ".. ")
                                 fimpara
                              senao // i é impar
                                    i <- i - 1
                                    para C <- i ate f passo -2 faca
                                         escreva(C, ".. ")
                                    fimpara
                              fimse
                         caso 2 // ele quer ver os ímpares
                              se (i % 2 = 0) entao // i é par
                                 i <- i - 1
                                 para C <- i ate f passo -2 faca
                                      escreva(C, ".. ")
                                 fimpara
                              senao // i é impar
                                    para C <- i ate f passo -2 faca
                                         escreva(C, ".. ")
                                    fimpara
                              fimse
                         outrocaso // opção inválida
                                   escreva("Opção inválida!")
                 fimescolha
              senao // i = f
                    escreva("O início do intervalo é idêntico ao fim")
                    caso 1 // ele quer ver os pares
                         se (i % 2 = 0) entao // i/f são pares
                            escreva(i, " É um número par!")
                         sena // i/f são ímpares
                              escreva(i, "NÃO É um número par!")
                         fimse
                    caso 2 // ele quer ver os números ímpares
                         se (i % 2 = 0) entao // i/f são oares
                            escreva(i, " NÃO É um ÍMPAR!")
                         senao // i/f são ímpares
                              escreva(i, " É um número ímpar")
                         fimse
                    outrocaso // opção inválida
                              escreva("Opção inválida!")
              fimse
         fimse
fimalgoritmo
