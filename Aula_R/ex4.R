# o 3 ta incompleto
# 3 ---------------------------------------------------------------------
# x - x^3/3! + x^5/5! - x^7/7! + x^9/9!
# precisao  = 10^-8
fatorial <- function(x) {
  
  fat <- 1 
  
  for (i in x:1) {
    
    fat <- fat * i
  
  }

  fat
}


exp_taylor <- function(x) {
  
  vec_e <- seq(from = 3, to = 10, by = 2)
  
  result <- 
  for (e in vec_e) {
    
    (x^e) / fatorial(e)
  
  }
  
}




verificadora <- function(x, .f, .threshold) {
  
  abs(.f(x) - sin(x)) < .threshold
  
}


# 4 ------------------------------------------------------------------

## x0 = a, x1 = b, e = precisao, f = funcao
bisection <- function(f, x0,x1,e) {
  
  if( (x1 - x0) < e) {
    return(runif(1, x0, x1))
  }
  
  # setup de condicoes de parada do while
  step <- 1
  condition <- TRUE
  
  while (condition) {
    
    x2 <- (x0 + x1)/2 
    
    
    if (f(x0) * f(x2) < 0) {
      x1 <- x2
    } else {
      x0 <- x2
    }
    
    step <- step + 1
    condition <- abs(f(x2)) > e
  }
  
  x2
}

# TRY IT
## a raiz da funcao pode ser raiz(2), que é ~1,4142
func <- function(x) {
  x**2 - 2
}

bisection(func, 0, 2, 0.01)

## vendo a funcao se aproximar de zero

for (tol in c(0.1, 0.01, 0.001, 0.0001, 0.00001, .0000001)) {

  resultado <- bisection(func, 0, 2, tol)
  print(paste0('Para x = ', resultado, 'o resultado da função foi de:', func(resultado)))
}

