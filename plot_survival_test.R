library(HeartMetrics)

# Load required packages
library(survival)
library(ggplot2)
library(gridExtra)

# Load the heart dataset
data(heart)

# Plot Kaplan-Meier survival curves for surgery groups
plot_survival(data = heart, formula = Surv(start, stop, event) ~ 1, group = heart$surgery,
              title = "Kaplan-Meier Survival Curves for Surgery Groups",
              subtitle = "Heart Transplant Patients", xlab = "Time (days)",
              ylab = "Survival Probability")
