# Load required library
library(caTools)

# Load the Iris dataset
data(iris)

# Randomly sample the dataset
set.seed(123)  # Set seed for reproducibility
split <- sample.split(iris$Species, SplitRatio = 0.8)
train_data <- subset(iris, split == TRUE)
test_data <- subset(iris, split == FALSE)

# Create logistic regression model with training data
model <- glm(Species ~ Petal.Width + Petal.Length, data = train_data, family = "binomial")

# Predict the probability of the model using test data
probabilities <- predict(model, test_data, type = "response")

# Create confusion matrix for the test model
predicted_species <- ifelse(probabilities > 0.5, "versicolor", "setosa")  # Threshold of 0.5
confusion_matrix <- table(test_data$Species, predicted_species)
confusion_matrix
