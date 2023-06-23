# -----------------------------------------
# Linear Correlation and Covariance
# -----------------------------------------

source("setup.R")

library(ISLR)

# Load the CarSeats dataset
# A simulated data set containing sales of child car seats at 400 different stores.
# Type ?CarSeats in the console to see description of variables.
data(Carseats)
Carseats$US <- as.numeric(Carseats$US) - 1

# Calculate the correlation coefficient between Sales and Community Income
correlation <- "..."

### DO NOT CHANGE

if (interactive()) {
  correlation
}

if (!interactive()) {
  output_correlation(correlation)
}

### DO NOT CHANGE

# Test the correlation coefficient between Sales and Advertising
correlation_test <- "..."

### DO NOT CHANGE

if (interactive()) {
  correlation_test
}

if (!interactive()) {
  output_cor_test(correlation_test)
}

### DO NOT CHANGE

# Calculate the covariance of Sales and Competitor Price
covariance <- "..."

### DO NOT CHANGE

if (interactive()) {
  covariance
}

if (!interactive()) {
  output_covariance(covariance)
}

### DO NOT CHANGE

# -----------------------------------------
# Linear Models
# -----------------------------------------

# Create a linear model predicting Sales from the Income Level of the population
lm_model <- "..."

### DO NOT CHANGE

if (interactive()) {
  # Print the summary of the linear model
  summary(lm_model)

  # Visualize the linear model
  plot(mtcars$wt, mtcars$mpg, main = "Linear Model", xlab = "Weight", ylab = "MPG")
  abline(lm_model)

}

if (!interactive()) {
  output_lm(lm_model)
}

### DO NOT CHANGE

# -----------------------------------------
# Generalized Linear Models (GLMs)
# -----------------------------------------

# Create a generalized linear model predicting whether a store is US from its sales.
glm_model <- glm("...", data = "...", family = binomial(link = "logit"))

### DO NOT CHANGE

if (interactive()) {
  # Print the summary of the linear model
  summary(glm_model)

  # Visualize the GLM
  plot(Carseats$Sales, Carseats$US, main = "Generalized Linear Model", xlab = "Sales", ylab = "US")
  lines(sort(Carseats$Sales), predict(glm_model, type = "response")[order(Carseats$Sales)], col = "blue")

}

if (!interactive()) {
  output_glm(glm_model)
}

### DO NOT CHANGE
