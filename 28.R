# Create a random sample of factor from LETTERS
set.seed(123)  # Set seed for reproducibility
random_letters <- sample(LETTERS, 20, replace = TRUE)
factor_letters <- factor(random_letters)

# Extract five levels of the factor
five_levels <- levels(factor_letters)[1:5]

# Print the extracted levels
print(five_levels)
