# Given data frame
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)

# a. Extract 3rd and 5th rows with 1st and 3rd columns
result_a <- exam_data[c(3, 5), c(1, 3)]

# b. Add a new column named country
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country

# c. Add new row(s) to an existing data frame
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
exam_data <- rbind(exam_data, new_exam_data)

# d. Sort the data frame by name and score
sorted_exam_data <- exam_data[order(exam_data$name, exam_data$score), ]

# e. Save the information of the data frame in a file and display the information of the file
write.csv(sorted_exam_data, "exam_data_sorted.csv")
cat("Contents of exam_data_sorted.csv:\n")
cat(readLines("exam_data_sorted.csv"), sep = "\n")
