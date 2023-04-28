# Load the survival package
library(HeartMetrics)
library(survival)

# Load the heart dataset
data(heart)

# Run the logistic regression analysis
result_logreg <- logistic_regression_analysis(data = heart)

# Print the results
print(result_logreg)

#The logistic regression analysis output suggests that age and surgery do not have a statistically significant effect on the binary outcome variable (event) in the heart dataset, whereas the intercept term is not significantly different from 0, which means that we cannot conclude that any of the covariates are associated with the event.
