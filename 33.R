# Load the airquality dataset
data(airquality)

# (i) Get the Summary Statistics of air quality dataset
summary_stats <- summary(airquality)
cat("(i) Summary Statistics of air quality dataset:\n")
print(summary_stats)

# (ii) Melt airquality data set and display as a long-format data
library(reshape2)
melted_data_long <- melt(airquality)
cat("\n(ii) Melted airquality data set in long-format:\n")
print(head(melted_data_long))

# (iii) Melt airquality data and specify month and day to be "ID variables"
melted_data_id <- melt(airquality, id.vars = c("Month", "Day"))
cat("\n(iii) Melted airquality data with Month and Day as ID variables:\n")
print(head(melted_data_id))

# (iv) Cast the molten airquality data set with respect to month and date features
casted_data <- dcast(melted_data_id, Month + Day ~ variable)
cat("\n(iv) Casted airquality data set with respect to Month and Day features:\n")
print(head(casted_data))

# Load the required package
library(reshape2)

# Melt the airquality data set
melted_data_long <- melt(airquality, id.vars = c("Month", "Day"))

# Check the structure of melted data
str(melted_data_long)

# Ensure the variable names are in the correct format
names(melted_data_long) <- make.names(names(melted_data_long))

# Use cast function appropriately and compute the average of Ozone, Solar.R, Wind, and temperature per month
average_per_month <- dcast(melted_data_long, Month ~ variable, mean)
print(average_per_month)

