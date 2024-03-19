# Create vectors, matrices, and a function
vector_data <- c(1, 2, 3, 4, 5)
matrix_data <- matrix(1:9, nrow = 3)
custom_function <- function(x) {
  return(x^2)
}

# Create a list containing vectors, matrices, and the function
my_list <- list(
  vector = vector_data,
  matrix = matrix_data,
  function_result = custom_function(1:5)
)

# Print the content of the list
print(my_list)
