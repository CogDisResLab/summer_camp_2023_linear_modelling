# -----------------------------------------
# Linear Correlation and Covariance
# -----------------------------------------

source("setup.R")

# Load the mtcars dataset
data(mtcars)

# Calculate the correlation coefficient
correlation <- cor(mtcars$mpg, mtcars$wt)

### DO NOT CHANGE

if (interactive()) {
  correlation
}

if (!interactive()) {
  output_correlation(correlation)
}

### DO NOT CHANGE

# Test the correlation coefficient
correlation_test <- cor.test(mtcars$mpg, mtcars$wt)

### DO NOT CHANGE

if (interactive()) {
  correlation_test
}

if (!interactive()) {
  output_cor_test(correlation_test)
}

### DO NOT CHANGE

# Calculate the covariance
covariance <- cov(mtcars$mpg, mtcars$wt)

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

# Create a linear model
lm_model <- lm(mpg ~ wt, data = mtcars)

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

# Create a generalized linear model
glm_model <- glm(vs ~ wt, data = mtcars, family = binomial(link = "logit"))

### DO NOT CHANGE

if (interactive()) {
  # Print the summary of the linear model
  summary(glm_model)

  # Visualize the GLM
  plot(mtcars$wt, mtcars$vs, main = "Generalized Linear Model", xlab = "Weight", ylab = "VS")
  lines(sort(mtcars$wt), predict(glm_model, type = "response")[order(mtcars$wt)], col = "blue")

}

if (!interactive()) {
  output_glm(glm_model)
}

### DO NOT CHANGE
