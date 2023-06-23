# Setup Script

renv::restore()

output_correlation <- function(cor_val) {
  cat("---Correlation Result---", "\n")
  cat("Correlation coefficient:", round(cor_val, 5), "\n\n")
}

output_covariance <- function(cov_val) {
  cat("---Covariance Result---", "\n")
  cat("Covariance:", round(cov_val, 5), "\n\n")
}

output_cor_test <- function(cor_test_val) {
  cat("---Correlation Test Result---", "\n")
  cat("Correlation coefficient:", round(cor_test_val$estimate, 5), "\n")
  cat("Correlation method:", cor_test_val$method, "\n")
  cat("Correlation P Value:", round(cor_test_val$p.value, 15), "\n")
  cat("Correlation 95% Confidence Interval:", round(cor_test_val$conf.int[1], 5), "--", round(cor_test_val$conf.int[2], 5), "\n\n")
}

output_lm <- function(lm_mod) {
  lm_mod_sum <- summary(lm_mod)
  cat("---Linear Model Result---", "\n")
  cat("Intercept coefficient:", round(lm_mod_sum$coefficients[1], 5), "\n")
  cat("Variable coefficient:", round(lm_mod_sum$coefficients[2], 5), "\n")
  cat("Intercept P Value:", round(lm_mod_sum$coefficients[7], 5), "\n")
  cat("Variable P Value:", round(lm_mod_sum$coefficients[8], 5), "\n")
  cat("R Squared:", round(lm_mod_sum$r.squared, 4), "\n")
  cat("Adjusted R Squared:", round(lm_mod_sum$adj.r.squared, 4), "\n\n")
}

output_glm <- function(glm_mod) {
  glm_mod_sum <- summary(glm_mod)
  cat("---Logistic Regression Model Result---", "\n")
  cat("Intercept coefficient:", round(glm_mod_sum$coefficients[1], 5), "\n")
  cat("Variable coefficient:", round(glm_mod_sum$coefficients[2], 5), "\n")
  cat("Intercept P Value:", round(glm_mod_sum$coefficients[7], 5), "\n")
  cat("Variable P Value:", round(glm_mod_sum$coefficients[8], 5), "\n")
}
