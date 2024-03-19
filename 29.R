# Load the Iris dataset
data(iris)

# (i) Find dimension, Structure, Summary statistics, Standard Deviation of all features
cat("Dimension of Iris dataset:", dim(iris), "\n")
cat("Structure of Iris dataset:\n")
str(iris)
cat("Summary statistics of Iris dataset:\n")
summary(iris)
cat("Standard Deviation of all features:\n")
sapply(iris[, 1:4], sd)
cat("\n")

# (ii) Find mean and standard deviation of features grouped by three species of Iris flowers
iris_grouped <- aggregate(. ~ Species, data = iris, FUN = function(x) c(mean = mean(x), sd = sd(x)))
print(iris_grouped)
cat("\n")

# (iii) Find quantile value of sepal width and length
quantile_sepal_width <- quantile(iris$Sepal.Width)
quantile_sepal_length <- quantile(iris$Sepal.Length)
cat("Quantile value of Sepal Width:\n")
print(quantile_sepal_width)
cat("\nQuantile value of Sepal Length:\n")
print(quantile_sepal_length)
cat("\n")

# (iv) Create new data frame named iris1 with a new column named Sepal.Length.Cate that categorizes "Sepal.Length" by quantile
iris1 <- iris
iris1$Sepal.Length.Cate <- cut(iris1$Sepal.Length, breaks = quantile_sepal_length, labels = FALSE)
cat("New data frame iris1:\n")
print(head(iris1))
cat("\n")

# (v) Average value of numerical variables by two categorical variables: Species and Sepal.Length.Cate
iris_avg <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = mean)
cat("Average value of numerical variables by Species and Sepal.Length.Cate:\n")
print(iris_avg)
cat("\n")

# (vi) Average mean value of numerical variables by Species and Sepal.Length.Cate
iris_avg_mean <- aggregate(. ~ Species + Sepal.Length.Cate, data = iris1, FUN = function(x) mean(mean(x)))
cat("Average mean value of numerical variables by Species and Sepal.Length.Cate:\n")
print(iris_avg_mean)
cat("\n")

# (vii) Create Pivot Table based on Species and Sepal.Length.Cate
pivot_table <- xtabs(~ Species + Sepal.Length.Cate, data = iris1)
cat("Pivot Table based on Species and Sepal.Length.Cate:\n")
print(pivot_table)
