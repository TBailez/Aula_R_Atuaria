# Sejam x e y dois vetores de mesmo tamanho. Exemplificando:
x <- c(1, 3, 7)
y <- c(2, 1, 1)

# Criando um vetor numerico z vazio 
z <- vector('numeric')

# Algorítmo para os valores de z
for (c in 1:length(x)) {
  if (x[c] > y[c]){
    z[c] = x[c] + y[c]
  }
  else{
    z[c] = 0
  }
}
print(z)

