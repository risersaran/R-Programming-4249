# Define the alphabet
alphabet <- letters

# Extract first 10 English letters in lowercase
first_10_lower <- alphabet[1:10]

# Extract last 10 letters in uppercase
last_10_upper <- toupper(tail(alphabet, 10))

# Extract letters between 22nd to 24th positions in uppercase
letters_22_to_24_upper <- toupper(alphabet[22:24])

# Print the results
cat("First 10 English letters in lowercase:", first_10_lower, "\n")
cat("Last 10 letters in uppercase:", last_10_upper, "\n")
cat("Letters between 22nd to 24th positions in uppercase:", letters_22_to_24_upper, "\n")
