# Vector of values
values <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)

# Vector of dimensions
dimensions <- c(3, 2, 2)  # Dimensions: 3 rows, 2 columns, 2 depth

# Provide names for each dimension
dim_names <- list(letters[1:3], c("A", "B"), c("X", "Y"))

# Create an array
my_array <- array(values, dim = dimensions, dimnames = dim_names)

# Print the array
print(my_array)
