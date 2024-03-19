# (i) Find any missing values(na) in features and drop the missing values if its less than 10% else replace that with mean of that feature.

# Check for missing values in features
missing_values <- sapply(airquality, function(x) sum(is.na(x)))
cat("Missing values in features:\n")
print(missing_values)

# Drop missing values if less than 10%
threshold <- 0.1 * nrow(airquality)
for (col in names(airquality)) {
  if (sum(is.na(airquality[[col]])) < threshold) {
    airquality <- airquality[complete.cases(airquality[[col]]), ]
  } else {
    mean_val <- mean(airquality[[col]], na.rm = TRUE)
    airquality[[col]][is.na(airquality[[col]])] <- mean_val
  }
}

# (ii) Apply a linear regression algorithm using Least Squares Method on “Ozone” and “Solar.R”
model <- lm(Ozone ~ Solar.R, data = airquality)
summary(model)

# (iii) Plot Scatter plot between Ozone and Solar and add regression line created by above mode
plot(airquality$Solar.R, airquality$Ozone, xlab = "Solar.R", ylab = "Ozone", main = "Scatter plot between Ozone and Solar.R")
abline(model, col = "red")