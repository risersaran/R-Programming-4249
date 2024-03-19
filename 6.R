sieve_of_eratosthenes <- function(n) {
  primes <- rep(TRUE, n)
  primes[1] <- FALSE
  for (i in 2:sqrt(n)) primes[i^2:n] <- FALSE
  return(which(primes))
}

n <- 100
print(sieve_of_eratosthenes(n))
