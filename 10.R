# Function to find maximum and minimum values of a vector
find_max_min <- function(vector) {
  max_value <- max(vector)
  min_value <- min(vector)
  return(c(maximum = max_value, minimum = min_value))
}

# Example usage
my_vector <- c(5, 2, 9, 1, 7)  # Change this to your desired vector
result <- find_max_min(my_vector)
print(result)
