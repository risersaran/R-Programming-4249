# Load the airquality dataset
data(airquality)

# i. Compute the mean temperature (without using built-in function)
mean_temp <- sum(airquality$Temp) / length(airquality$Temp)
cat("Mean temperature:", mean_temp, "\n")

# ii. Extract the first five rows from airquality
first_five_rows <- airquality[1:5, ]
cat("First five rows from airquality:\n")
print(first_five_rows)

# iii. Extract all columns from airquality except Temp and Wind
columns_except_temp_wind <- airquality[, !(names(airquality) %in% c("Temp", "Wind"))]
cat("\nColumns from airquality except Temp and Wind:\n")
print(columns_except_temp_wind)

# iv. Identify the coldest day during the period
coldest_day <- airquality[which.min(airquality$Temp), "Day"]
cat("\nColdest day during the period:", coldest_day, "\n")

# v. Count the number of days with wind speed greater than 17 mph
days_greater_than_17_mph <- sum(airquality$Wind > 17, na.rm = TRUE)
cat("\nNumber of days with wind speed greater than 17 mph:", days_greater_than_17_mph, "\n")
