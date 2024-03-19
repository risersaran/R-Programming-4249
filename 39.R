# Load the USArrests dataset
data(USArrests)

# (i) Explore the summary of Data set
# (i).a. Summary of the dataset
summary_data <- summary(USArrests)
print(summary_data)

# (i).b. State with the largest total number of rape
state_max_rape <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("(i).b. State with the largest total number of rape:", state_max_rape, "\n")

# (i).c. States with max & min crime rates for murder
max_murder_state <- rownames(USArrests)[which.max(USArrests$Murder)]
min_murder_state <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("(i).c. State with the max crime rate for murder:", max_murder_state, "\n")
cat("(i).c. State with the min crime rate for murder:", min_murder_state, "\n")

# (ii) Find the correlation among the features
# (ii).a. Correlation matrix
correlation_matrix <- cor(USArrests)
print("(ii).a. Correlation among the features:")
print(correlation_matrix)

# (ii).b. States with assault arrests more than median
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
cat("(ii).b. States with assault arrests more than median:", states_above_median_assault, "\n")

# (ii).c. States in the bottom 25% of murder
bottom_25_percent_murder <- rownames(USArrests)[USArrests$Murder < quantile(USArrests$Murder, 0.25)]
cat("(ii).c. States in the bottom 25% of murder:", bottom_25_percent_murder, "\n")

# (iii) Create plots
# (iii).a. Histogram and density plot of murder arrests by US state
histogram_murder <- hist(USArrests$Murder, main = "Histogram of Murder Arrests", xlab = "Murder Arrests", col = "skyblue", border = "black")
density_murder <- density(USArrests$Murder, main = "Density Plot of Murder Arrests")
plot(density_murder, main = "Density Plot of Murder Arrests", xlab = "Murder Arrests", col = "skyblue")

# (iii).b. Relationship between murder arrest rate and proportion of urban population by state
plot_murder_urban <- plot(USArrests$UrbanPop, USArrests$Murder, main = "Murder Arrest Rate vs Urban Population", xlab = "Proportion Urban Population", ylab = "Murder Arrest Rate", col = heat.colors(length(USArrests$UrbanPop)), pch = 16)

# (iii).c. Bar graph showing murder rate for each state
barplot_murder_rate <- barplot(USArrests$Murder, names.arg = rownames(USArrests), main = "Murder Rate by State", xlab = "State", ylab = "Murder Rate", col = "skyblue", border = "black", las = 2)
