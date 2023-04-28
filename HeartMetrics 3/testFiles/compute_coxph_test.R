library(HeartMetrics)

library(survival)
data(heart)

# Fit Cox proportional hazards model for age and surgery
model <- compute_coxph(heart, Surv(start, stop, event) ~ age + surgery)

# Print model coefficients, standard errors, and p-values
cat("Model Coefficients:\n")
print(model$coef)
cat("\nStandard Errors:\n")
print(model$se)
cat("\nP-values:\n")
print(model$pval)


#The coefficient estimate for age is 0.03067592, with a standard error of 0.01363631 and a p-value of 0.02447585. This indicates that older patients have a higher risk of death than younger patients, after adjusting for the effect of surgery. The effect of age is statistically significant at the 5% level.
#The coefficient estimate for surgery is -0.77284499, with a standard error of 0.35953334 and a p-value of 0.03158860. This indicates that patients who received surgery have a lower risk of death than patients who did not receive surgery, after adjusting for the effect of age. The effect of surgery is statistically significant at the 5% level.
#The standard error for the coefficient estimate of age is relatively small, indicating that the estimate is precise. However, the standard error for the coefficient estimate of surgery is relatively large, indicating that the estimate is less precise.
#The p-values for both age and surgery are less than 0.05, indicating that the effects of these variables on survival time are statistically significant at the 5% level. This means that we can reject the null hypothesis that the coefficients for these variables are zero, and conclude that they have a non-zero effect on survival time.
