# Create a 5 x 4 matrix filled by rows
matrix_5x4_rows <- matrix(1:20, nrow = 5, byrow = TRUE)

# Create a 3 x 3 matrix with labels
matrix_3x3_labels <- matrix(letters[1:9], nrow = 3)

# Create a 2 x 2 matrix filled by columns
matrix_2x2_columns <- matrix(11:14, ncol = 2)

# Print matrices
print(matrix_5x4_rows)
print(matrix_3x3_labels)
print(matrix_2x2_columns)
