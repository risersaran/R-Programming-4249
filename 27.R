# Access the built-in dataset 'women'
data(women)

# Create a factor corresponding to height
height_factor <- cut(women$height, breaks = c(50, 60, 70, 80), labels = c("Short", "Medium", "Tall"))

# Print the factor
print(height_factor)
