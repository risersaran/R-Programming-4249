# Call the built-in dataset airquality
data(airquality)

# Check if it is a data frame
is_data_frame <- is.data.frame(airquality)
cat("Is airquality a data frame? ", is_data_frame, "\n")

# Order the entire data frame by the first and second column
ordered_airquality <- airquality[order(airquality$Month, airquality$Day), ]

# Remove the variables 'Solar.R' and 'Wind'
airquality_subset <- subset(ordered_airquality, select = -c(Solar.R, Wind))

# Display the modified data frame
print(airquality_subset)
