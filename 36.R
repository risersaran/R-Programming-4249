# Load the ChickWeight dataset
data(ChickWeight)

# Load required library
library(ggplot2)

# (a) Create Box plot for “weight” grouped by “Diet”
boxplot_weight_diet <- ggplot(ChickWeight, aes(x = factor(Diet), y = weight)) +
  geom_boxplot() +
  labs(title = "Box plot of Weight Grouped by Diet",
       x = "Diet",
       y = "Weight")

# (b) Create a Histogram for “weight” features belonging to Diet-1 category
histogram_weight_diet1 <- ggplot(subset(ChickWeight, Diet == 1), aes(x = weight)) +
  geom_histogram(binwidth = 10, fill = "skyblue", color = "black") +
  labs(title = "Histogram of Weight for Diet-1",
       x = "Weight",
       y = "Frequency")

# (c) Create Scatter plot for “weight” vs “Time” grouped by Diet
scatterplot_weight_time_diet <- ggplot(ChickWeight, aes(x = Time, y = weight, color = factor(Diet))) +
  geom_point() +
  labs(title = "Scatter plot of Weight vs Time Grouped by Diet",
       x = "Time",
       y = "Weight",
       color = "Diet")

# Print the plots
print(boxplot_weight_diet)
print(histogram_weight_diet1)
print(scatterplot_weight_time_diet)
