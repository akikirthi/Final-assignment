% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_survival.R
\name{plot_survival}
\alias{plot_survival}
\title{Plot Kaplan-Meier survival curves for a subset of the heart dataset}
\usage{
plot_survival(
  data,
  formula,
  group,
  title = "",
  subtitle = "",
  xlab = "",
  ylab = ""
)
}
\arguments{
\item{data}{A data frame containing the subset of the heart dataset}

\item{formula}{A formula specifying the survival analysis model}

\item{group}{A character vector specifying the grouping variable}

\item{title}{A character string specifying the plot title}

\item{subtitle}{A character string specifying the plot subtitle}

\item{xlab}{A character string specifying the x-axis label}

\item{ylab}{A character string specifying the y-axis label}
}
\description{
Plot Kaplan-Meier survival curves for a subset of the heart dataset
}
\examples{
# Plot Kaplan-Meier survival curves for the surgery group
data <- surv_subset(heart, surgery == 1)
plot_survival(data, Surv(start, stop, event) ~ 1, group = "surgery",
              title = "Kaplan-Meier Survival Curves for Surgery Group",
              subtitle = "Subset of Heart Transplant Patients", xlab = "Time (days)",
              ylab = "Survival Probability")
}
