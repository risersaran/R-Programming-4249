# Define two vectors as input
vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9)
vector2 <- c(10, 11, 12, 13, 14, 15, 16, 17, 18)

# Combine the vectors into a single matrix
combined_matrix <- cbind(vector1, vector2)

# Create the array
my_array <- array(combined_matrix, dim = c(3, 3, 2))

# Print the array
print(my_array)
