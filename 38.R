# Load the Titanic dataset
data(Titanic)

# Convert Titanic data to a data frame
titanic_df <- as.data.frame(Titanic)

# Load required library
library(ggplot2)

# (a) Draw a Bar chart to show details of “Survived” on the Titanic based on passenger Class
barplot_class_survived <- ggplot(titanic_df, aes(x = Class, fill = Survived)) +
  geom_bar(position = "dodge", stat = "count") +
  labs(title = "Survival based on Passenger Class",
       x = "Passenger Class",
       y = "Count",
       fill = "Survived")

# (b) Modify the above plot based on gender of people who survived
barplot_class_survived_gender <- ggplot(subset(titanic_df, Survived == "Yes"), aes(x = Class, fill = Sex)) +
  geom_bar(position = "dodge", stat = "count") +
  labs(title = "Survival based on Passenger Class and Gender",
       x = "Passenger Class",
       y = "Count",
       fill = "Gender")

# (c) Draw histogram plot to show distribution of feature “Age”
histogram_age <- ggplot(titanic_df, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue", color = "black") +
  labs(title = "Distribution of Passenger Age",
       x = "Age",
       y = "Frequency")

# Print the plots
print(barplot_class_survived)
print(barplot_class_survived_gender)
print(histogram_age)
