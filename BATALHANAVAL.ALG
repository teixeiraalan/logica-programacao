Algoritmo "BatalhaNaval"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Alcemar Pothin 
// Descri��o   : Jogo de Batalha Naval

// Autor(a)    : Alan, Antoniella, Luan, Deiws, Wellington
// Data atual  : 18/10/2022
Var
// Se��o de Declara��es das vari�veis 
x, y, bonus, navios, tiros, bombas, agua, col, lin, ponto : inteiro
BN : vetor[1..10,1..10] de caractere
enter : caractere
a : caractere
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
tiros <- 10
navios <- 0
bombas <- 0
bonus <- 1
ponto <- 0
escreva ("Pressione Enter para iniciar o jogo.")
leia (enter)
limpatela

para x de 1 ate 10 faca
    para y de 1 ate 10 faca
      BN [x , y] <- "~~~~~"

    fimpara
fimpara

repita
    aleatorio 1 , 10  //aleatorio da bomba
        leia (x)
        leia (y)
        limpatela
        se (BN[x, y] = "~~~~~") entao
          BN[x, y]<- "BOMBA"
        senao
          bombas <- bombas - 1
        fimse
    aleatorio off
    bombas <- bombas + 1
ate bombas > 6
repita
    aleatorio 1, 10 //aleatorio Navio
        leia (x)
        leia (y)
        limpatela
        se (BN[x, y] = "~~~~~") entao
           BN[x, y] <- "NAVIO"
        senao
           navios <- navios - 1
        fimse
    aleatorio off
    navios <- navios + 1
ate navios > 4

repita
    aleatorio 1, 10 //aleatorio B�nus
        leia (x)
        leia (y)
        limpatela
        se (BN[x,y] = "~~~~~") entao
           BN[x, y] <- "BONUS"
        senao
           bonus <- bonus - 1
        fimse
    aleatorio off
    bonus <- bonus + 1
ate bonus > 1

limpatela

repita
      escreva ("Em qual linha voc� quer atirar? (1 a 10)")
      leia (x)

      escreva ("Em qual coluna vc quer atirar? (1 a 10)")
      leia (y)


   escolha BN[x, y]
           caso "~~~~~"
                escreval ("Tiro Desperdi�ado. :(")
                se (tiros = "~~~~~") entao
                   tiros <- tiros - 1
                fimse
           caso "BONUS"
                escreval ("J�ia, voc� conseguiu um B�NUS!")
                se (tiros = "BONUS") entao
                   tiros <- tiros + 1
                   ponto <- ponto + 5
                fimse
           caso "NAVIO"
                escreval ("Felicita��es, voc� acertou um NAVIO!")
                se (tiros = "NAVIO") entao
                   tiros <- tiros - 1
                   ponto <- ponto + 10
                fimse
           caso "BOMBA"
                escreval ("Vish, se lascou, menos uma vida")
                se (bombas = 3) entao
                   escreval ("~~~~~~~~Game Over~~~~~~~~")
                   tiros <- 0
                   ponto <- ponto - 1
                fimse
           outrocaso
                escreval ("Error 404")
   fimescolha
ate tiros <= 0
limpatela
escreval (" ")

para x de 1 ate 10 faca
    para y de 1 ate 10 faca
      escreva (BN [x , y], " ")

    fimpara
    escreval (BN [x , y], " ")
fimpara

escreval ("Score de: ", ponto, " pontos.")



Fimalgoritmo