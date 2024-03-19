# Load the ChickWeight dataset
data(ChickWeight)

# (i). Order the data frame, in ascending order by feature name “weight” grouped by feature “diet” and Extract the last 6 records from order data frame.
# Check for empty groups and remove them
valid_groups <- tapply(ChickWeight$weight, ChickWeight$diet, function(x) length(x) > 0)
ChickWeight_filtered <- ChickWeight[ChickWeight$diet %in% names(valid_groups[valid_groups]), ]

# Order the filtered data frame
ordered_data <- ChickWeight_filtered[order(ave(ChickWeight_filtered$weight, ChickWeight_filtered$diet, FUN = function(x) x)), ]
last_six_records <- tail(ordered_data, 6)
cat("(i) Last 6 records from the ordered data frame:\n")
print(last_six_records)



# (ii). Melting function based on “Chick", "Time", "Diet" features as ID variables
library(reshape2)
melted_data <- melt(ChickWeight, id.vars = c("Chick", "Time", "Diet"))
cat("\n(ii) Melted data based on 'Chick', 'Time', 'Diet' features as ID variables:\n")
print(head(melted_data))

# (ii).a. Perform cast function to display the mean value of weight grouped by Diet
mean_weight_cast <- dcast(melted_data, Diet ~ variable, mean)
cat("\n(ii).a. Mean value of weight grouped by Diet:\n")
print(mean_weight_cast)

# (ii).b. Perform cast function to display the mode of weight grouped by Diet
mode_weight_cast <- dcast(melted_data, Diet ~ variable, function(x) {
  tbl <- table(x)
  names(tbl)[which.max(tbl)]
})
cat("\n(ii).b. Mode value of weight grouped by Diet:\n")
print(mode_weight_cast)
