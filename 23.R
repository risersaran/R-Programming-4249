# Define the values for the array
values <- c(1, 2, 3, 4, 5, 6)

# Create the array with specified dimensions
my_array <- array(values, dim = c(3, 2, 2), dimnames = list(c("Row1", "Row2", "Row3"), c("Col1", "Col2"), c("Table1", "Table2")))

# Display the content of the array
print(my_array)
