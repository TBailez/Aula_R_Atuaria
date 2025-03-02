# sugiro que vejam o arquivo "Rac�ocinio_Taylor" que est� na mesma pasta

f <- function(x){
  TOL = 10^-8
  k <- 1 #contador do expoente de x (cresce de 2 em 2)
  c <- 1 #contador do n�mero de termos (cresce de 1 em 1)
  parcela_total <- 0 

  repeat{
    #formula geral da parcela
    parcela <- ((-1)^(c+1))*(x^k)/factorial(k)
    parcela_total <- parcela_total + parcela
    if (abs(parcela) < TOL){
      break
    }
    k <- k + 2
    c <- c + 1
  }
  print('Valor encontrado:')
  print(parcela_total)
  print('N�mero de itera��es:')
  print(c)
}

#Exemplo com sen(10)
f(10)

