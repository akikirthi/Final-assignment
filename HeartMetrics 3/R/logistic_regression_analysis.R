#' Perform logistic regression on the heart dataset
#'
#' This function performs a logistic regression analysis on the heart dataset from the survival package using the glm() function.
#'
#' @param data A data frame containing the heart dataset.
#' @return A list containing the coefficients, standard errors, z-scores, and p-values for the logistic regression analysis.
#' @importFrom survival Surv
#' @export
#' @examples
#' heart <- survival::heart
#' result_logreg <- logistic_regression_analysis(heart)
logistic_regression_analysis <- function(data) {
  require(survival)

  # Convert the event column to a binary variable
  data$event <- ifelse(data$event == 1, 1, 0)

  # Fit a logistic regression model with age and surgery as covariates
  model <- glm(event ~ age + surgery, data = data, family = binomial(link = "logit"))

  # Extract the coefficients, standard errors, z-scores, and p-values from the model
  coef <- coef(summary(model))
  names(coef) <- c("Coefficients", "Standard errors", "Z-scores", "P-values")

  return(coef)
}
