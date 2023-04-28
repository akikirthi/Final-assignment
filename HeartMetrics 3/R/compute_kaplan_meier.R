#' Compute Kaplan-Meier estimator on the heart dataset
#'
#' @param data A data frame containing the heart dataset
#' @param time_col The name of the column in the data frame containing the survival time
#' @param event_col The name of the column in the data frame containing the event status
#' @param group_col (Optional) The name of the column in the data frame containing the group labels
#'
#' @return A list containing the survival probabilities and standard errors for each group
#'
#' @importFrom survival survfit
#' @importFrom broom tidy
#'
#' @examples
#' # Calculate Kaplan-Meier estimator for overall survival
#' km <- compute_kaplan_meier(heart, "stop", "event")
#'
#' # Calculate Kaplan-Meier estimator by surgery status
#' km <- compute_kaplan_meier(heart, "stop", "event", "surgery")
#' @export
compute_kaplan_meier <- function(data, time_col, event_col, group_col = NULL) {
  # Load required packages
  library(survival)
  library(broom)

  # Fit Kaplan-Meier estimator
  if (is.null(group_col)) {
    km <- survfit(Surv(data[[time_col]], data[[event_col]]) ~ 1)
  } else {
    km <- survfit(Surv(data[[time_col]], data[[event_col]]) ~ data[[group_col]])
  }

  # Extract survival probabilities and standard errors
  summary <- tidy(km)

  # Return list of survival probabilities and standard errors
  return(list(surv_prob = summary$estimate, se = summary$std.error))
}
