#' Plot Kaplan-Meier survival curves for a subset of the heart dataset
#'
#' @param data A data frame containing the subset of the heart dataset
#' @param formula A formula specifying the survival analysis model
#' @param group A character vector specifying the grouping variable
#' @param title A character string specifying the plot title
#' @param subtitle A character string specifying the plot subtitle
#' @param xlab A character string specifying the x-axis label
#' @param ylab A character string specifying the y-axis label
#'
#' @importFrom survival survfit
#' @importFrom ggplot2 ggplot, geom_step, labs, theme_bw
#' @importFrom gridExtra grid.arrange
#'
#' @examples
#' # Plot Kaplan-Meier survival curves for the surgery group
#' data <- surv_subset(heart, surgery == 1)
#' plot_survival(data, Surv(start, stop, event) ~ 1, group = "surgery",
#'               title = "Kaplan-Meier Survival Curves for Surgery Group",
#'               subtitle = "Subset of Heart Transplant Patients", xlab = "Time (days)",
#'               ylab = "Survival Probability")
#' @export
plot_survival <- function(data, formula, group, title = "", subtitle = "", xlab = "", ylab = "") {
  # Load required packages
  library(survival)
  library(ggplot2)
  library(gridExtra)

  # Compute survival curves by group
  fit <- survfit(formula, data = data)

  # Create data frame for plotting
  df <- data.frame(time = fit$time, surv = fit$surv, group = rep(group, length(fit$time)))

  # Plot survival curves using ggplot2
  p <- ggplot(df, aes(x = time, y = surv, color = group)) +
    geom_step() +
    labs(title = title, subtitle = subtitle, x = xlab, y = ylab) +
    theme_bw()

  # Arrange plots side by side
  plot_grid <- grid.arrange(p, ncol = 1)

  # Return plot object
  return(plot_grid)
}
