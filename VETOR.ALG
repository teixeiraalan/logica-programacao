Algoritmo "vetor"
// Disciplina   : Linguagem e L�gica de Programa��o
// Professor   : Alcemar Pothin 
// Descri��o   : Aqui voc� descreve o que o programa faz! (fun��o)
// Autor(a)    : Alan Teixeira
// Data atual  : 17/10/2022
Var
// Se��o de Declara��es das vari�veis 
produto : vetor[1..10] de caractere
estoque : vetor[1..10] de inteiro
preco : vetor[1..10] de real
x : inteiro
total : real
Inicio
// Se��o de Comandos, procedimento, fun��es, operadores, etc... 
para x de 1 ate 10 faca

 escreval ("Informe oprodutos:")
 leia (produto[x])
 
 escreval ("Informe o estoque: ")
 leia (estoque[x])
 
 escreval ("informe o pre�o: ")
 leia (preco[x])
 
limpatela
fimpara

escreval ("Seu invent�rio de produtos � o seguinte:")
escreval (" ")

para x de 1 ate 10 faca
  escreval ("Produto ", produto[x],"| Estoque ", estoque[x],"| Pre�o",preco[x])
fimpara

Fimalgoritmo