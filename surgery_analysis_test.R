library(HeartMetrics)

# Load the heart dataset

library(survival)
data(heart)

# Call the surgery_analysis function and store the results in a variable
analysis <- surgery_analysis(heart)

# Print the summary statistics for the surgery=0 group
print(analysis$no_surgery_summary)

# Print the summary statistics for the surgery=1 group
print(analysis$surgery_summary)

# Print the t-test results
print(analysis$t_test)


#Based on the outputs you have provided, we can see that the mean age of the surgery=0 group is -2.519378 with a standard deviation of 10.08133, while the mean age of the surgery=1 group is -2.309708 with a standard deviation of 5.144151. The sample sizes for the two groups are 143 and 29, respectively.

#The t-test results indicate that there is no statistically significant difference in the mean age between the surgery=0 and surgery=1 groups, as the p-value is 0.8697 which is greater than the commonly used threshold of 0.05 for statistical significance. The confidence interval also includes zero, which further supports the notion that there is no significant difference in the means of the two groups.
