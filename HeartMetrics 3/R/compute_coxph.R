#' Compute Cox proportional hazards model on the heart dataset
#'
#' @param data A data frame containing the heart dataset
#' @param formula A formula specifying the Cox proportional hazards model
#'
#' @return A list containing the model object, coefficients, standard errors, and p-values
#'
#' @importFrom survival coxph
#' @importFrom broom tidy
#'
#' @examples
#' # Fit Cox proportional hazards model for age and surgery
#' model <- compute_coxph(heart, Surv(start, stop, event) ~ age + surgery)
#' @export
compute_coxph <- function(data, formula) {
  # Load required packages
  library(survival)
  library(broom)

  # Fit Cox proportional hazards model
  model <- coxph(formula, data)

  # Extract model statistics
  summary <- tidy(model)

  # Return list of model statistics
  return(list(model = model, coef = coef(model), se = summary$std.error, pval = summary$p.value))
}
