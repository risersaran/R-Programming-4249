# Load the ChickWeight dataset
data(ChickWeight)

# Convert "Diet" to a factor variable
ChickWeight$Diet <- factor(ChickWeight$Diet)

# (a) Create multi regression model to find weight of the chicken, by “Time” and “Diet” as predictor variables
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# (b) Predict weight for Time=10 and Diet=1
new_data <- data.frame(Time = 10, Diet = factor(1))
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted weight for Time=10 and Diet=1:", predicted_weight, "\n")

# (c) Find the error in model for the same
actual_weight <- ChickWeight$weight[ChickWeight$Time == 10 & ChickWeight$Diet == 1]
error <- abs(actual_weight - predicted_weight)
cat("Error in model for Time=10 and Diet=1:", error, "\n")
