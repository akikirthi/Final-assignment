# Load the packages
library(HeartMetrics)
library(survival)
library(ggsurvplot)


# Load the heart dataset from the survival package
data(heart)

# Analyze the heart dataset using various statistical methods
results <- analyze_heart(heart, 365)

# Print the Cox proportional hazards model summary
print(results$cox_summary)
#The hazard ratio for age is exp(0.0307) = 1.031, indicating that the hazard rate increases by 3.1% for each one-unit increase in age. The hazard ratio for surgery is exp(-0.773) = 0.46, indicating that patients who underwent surgery had a 54% lower hazard rate compared to those who did not undergo surgery, after adjusting for age. Both variables have p-values less than 0.05, suggesting that they are significant predictors of survival.


# Print the hazard ratio
print(results$hazard_ratio)
#The hazard ratio for age is 1.031, indicating that the hazard rate increases by approximately 3.1% for each one-unit increase in age. The hazard ratio for surgery is 0.462, indicating that patients who underwent surgery had a 54% lower hazard rate compared to those who did not undergo surgery, after adjusting for age.

# Print the hazard ratio confidence intervals
print(results$hazard_ratio_ci)
#The confidence interval for age ranges from 1.004 to 1.059, indicating that we are 95% confident that the true hazard ratio for age falls between these two values. Similarly, the confidence interval for surgery ranges from 0.228 to 0.934, indicating that we are 95% confident that the true hazard ratio for surgery falls between these two values.

# Print the summary statistics for patients who died within the threshold
print(results$summary_stats)

# Plot the survival curves by surgery type
print(results$survival_plot)

# Print the average age by surgery type
print(results$avg_age_by_surgery)
# The average age of patients who did not undergo surgery (surgery=0) is -2.52, while the average age of patients who underwent surgery (surgery=1) is -2.31. This suggests that, on average, patients who underwent surgery were slightly younger than those who did not.

# Print the survival rate by surgery type
print(results$survival_rate_by_surgery)
# the survival rate for patients who did not undergo surgery (surgery=0) is 0.538, while the survival rate for patients who underwent surgery (surgery=1) is 0.690. This suggests that, on average, patients who underwent surgery had a higher survival rate than those who did not.

# View the patients who died within the threshold
View(results$deaths_threshold)
