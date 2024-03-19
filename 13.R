# Generate a list of random numbers with normal distribution
random_numbers <- rnorm(100, mean = 0, sd = 1)  # Generates 100 random numbers with mean 0 and standard deviation 1

# Count occurrences of each value
counts <- table(random_numbers)

# Print the counts
print(counts)
