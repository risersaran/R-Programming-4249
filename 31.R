# Given values
values <- c(90, 50, 70, 80, 70, 60, 20, 30, 80, 90, 20)

# (i) Compute mean, median, and mode
mean_value <- mean(values)
median_value <- median(values)
mode_value <- names(sort(-table(values)))[1]

# Print mean, median, and mode
cat("Mean:", mean_value, "\n")
cat("Median:", median_value, "\n")
cat("Mode:", mode_value, "\n")

# (ii) Find 2nd highest and 3rd lowest value
sorted_values <- sort(unique(values))
second_highest <- sorted_values[length(sorted_values) - 1]
third_lowest <- sorted_values[3]

# Print 2nd highest and 3rd lowest value
cat("2nd highest value:", second_highest, "\n")
cat("3rd lowest value:", third_lowest, "\n")
