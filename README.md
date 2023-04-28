**HeartMetrics**

HeartMetrics is an R package that provides a set of functions for analyzing the heart dataset from the survival package. The package includes functions for performing various statistical analyses such as PCA, logistic regression, and survival analysis.

**Installation**

You can install the HeartMetrics package from GitHub using the devtools package:

devtools::install_github("HeartMetrics")

**Functions**

The following functions are included in the HeartMetrics package:

1.  **surgery_analysis**: Analyze the difference between surgery=0 and surgery=1 for the heart dataset.
2.  **plot_survival**: Plot Kaplan-Meier survival curves for a subset of the heart dataset.
3.  **pca_analysis**: Perform PCA analysis on the heart dataset.
4.  **logistic_regression_analysis**: Perform logistic regression on the heart dataset.
5.  **compute_kaplan_meier**: Compute the Kaplan-Meier estimator on the heart dataset.
6.  **compute_coxph**: Compute the Cox proportional hazards model on the heart dataset.
7.  **analyze_heart**: Analyze the heart dataset using various statistical methods.

**Usage**

To use the HeartMetrics package, first load it into your R session:

library(HeartMetrics)

You can then call the various functions provided by the package, passing in the heart dataset as a parameter. For example, to perform PCA analysis on the heart dataset, you can use the pca_analysis function:

data(heart)

pca_result \<- pca_analysis(heart)

**License**

This package is licensed under the MIT License. See the LICENSE file for more information.

**Contributing**

Contributions to the HeartMetrics package are welcome. To contribute, please submit a pull request to the GitHub repository.
