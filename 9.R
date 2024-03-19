find_factors <- function(number) {
  factors <- c()
  for (i in 1:number) {
    if (number %% i == 0) {
      factors <- c(factors, i)
    }
  }
  return(factors)
}

# Example usage
number <- 24  # Change this to the desired number
factors_of_number <- find_factors(number)
print(paste("Factors of", number, "are:", factors_of_number))
