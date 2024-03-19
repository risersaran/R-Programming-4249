# Function to get user input for name and age
getUserInput <- function() {
  name <- readline(prompt = "Enter your name: ")
  age <- as.numeric(readline(prompt = "Enter your age: "))
  return(list(name = name, age = age))
}

# Main function
main <- function() {
  userInput <- getUserInput()
  
  # Displaying user input
  cat("Name:", userInput$name, "\n")
  cat("Age:", userInput$age, "\n")
  
  # Printing R version
  cat("R Version:", R.version.string, "\n")
}

# Call main function
main()
