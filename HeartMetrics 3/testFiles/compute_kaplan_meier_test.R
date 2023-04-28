library(HeartMetrics)

# Load required packages
library(survival)

# Load heart dataset
data(heart)

# Calculate Kaplan-Meier estimator for overall survival
km <- compute_kaplan_meier(heart, "stop", "event")

# Print results
km


#The surv_prob object is a vector of estimated survival probabilities, while the se object is a vector of standard errors.
#For example, the first element of surv_prob is 0.9941860, which is the estimated probability that a patient survives beyond the first day. The corresponding standard error in the first element of se is 0.005830929.
#You can use these outputs to plot a Kaplan-Meier curve to visualize the survival probabilities over time.
