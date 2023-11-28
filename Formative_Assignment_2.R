# Importing Data
data <- read.csv("C:/Users/tpade/Desktop/Diabetes-data.csv", header = TRUE)

# Creating a Numerical Summary of the Data
num_summary <- summary(data)
print(num_summary)

# Replacing missing values in the data frame with NA
data <- data.frame(lapply(data, function(x) {
  x[x == "" | x == "?"] <- NA
  return(x)
}))

# Checking if the columns have more than 20% of their values missing
missing_values <- is.na(data) # Matrix of TRUE/FALSE values
column_sum_bool <- colSums(missing_values) # The total sum of TRUE values
n_data_points <- nrow(data) # Number of rows or data points for each column
total_missing <- column_sum_bool / n_data_points # The fraction of missing values in a given column
missing_20_percent <- total_missing > 0.2 # Checking the condition
columns_to_keep <- !missing_20_percent
n_data <- data[, columns_to_keep] # New data

# Replacing missing value with the minimum in the column
n_data_imputed <- data.frame(lapply(n_data, function(x) {
  if (is.numeric(x)) {
    x <- ifelse(is.na(x), min(x, na.rm = TRUE), x)
  }
  return(x)
}))

# Checking if from second to the second to last column there are any 0's
n_col <- ncol(n_data_imputed)
temp_data <- n_data_imputed[, 2:(n_col - 1)]

check_for_0 <- temp_data == 0
rows_with_zero <- apply(check_for_0, 1, any)
n_data_clean <- n_data_imputed[!rows_with_zero, ]
n_data_clean <- data.frame(lapply(n_data_clean, as.numeric))

# Aggregate to calculate mean
mean_aggregate <- aggregate(. ~ Outcome, data = n_data_clean, FUN = mean)

# Aggregate to calculate median
median_aggregate <- aggregate(. ~ Outcome, data = n_data_clean, FUN = median)

# Display results
print(mean_aggregate)
print(median_aggregate)

# Calculating the correlation matrix
cor_matrix <- cor(n_data_clean, use = "complete.obs")

# Generating heat map
heatmap(cor_matrix, symm = TRUE)

# Plotting Glucose vs BMI
plot(n_data_clean$Glucose, n_data_clean$BMI, xlab = "Glucose", ylab = "BMI", col = ifelse(n_data_clean$Outcome == 1, "red", "blue"))
legend("topright", legend = c("Non-diabetic", "Diabetic"))

# Assigning BMI Categories
n_data_clean$BMI_Category <- with(n_data_clean, ifelse(BMI < 23, "Underweight",
  ifelse(BMI <= 29, "Normal Weight", "Overweight")
))

# Analyzing BMI Category and Diabetes Outcome
bmi_diabetes <- aggregate(Outcome ~ BMI_Category, data = n_data_clean, FUN = function(x) {
  mean(x) * 100
})

library(psych)
library(ggplot2)

# Generate the scatter matrix plot with adjusted parameters
Scatter_Matrix <- pairs.panels(n_data_clean,
  gap = 0.5, # Increase spacing between plots
  cex.labels = 0.75, # Decrease text size for labels
  cex.axis = 0.75, # Decrease text size for axis labels
  oma = c(5, 5, 5, 5), # Adjust outer margins
  alpha = 0.5 # Use some transparency for the points
)
