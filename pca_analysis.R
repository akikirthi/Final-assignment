#' PCA Analysis
#'
#' Perform PCA analysis on a data frame and create a scatterplot of the first two principal components.
#'
#' @param data a data frame
#'
#' @return a scatterplot of the first two principal components
#'
#' @import cluster
#' @import ggplot2
#' @import dplyr
#' @import tidyr
#' @import survival
#' @import magrittr
#'
#' @examples
#' data(heart)
#' pca_analysis(heart)
#'
pca_analysis<- function(data) {
  # Remove columns with missing values
  data <- data %>% na.omit()

  # Identify numeric columns
  numeric_cols <- sapply(data, is.numeric)

  # Perform PCA
  pca_obj <- prcomp(data[, numeric_cols], center = TRUE, scale. = TRUE)
  scores <- pca_obj$x

  # Create scatterplot
  df <- data.frame(PC1 = scores[, 1], PC2 = scores[, 2])
  p <- ggplot(df, aes(x = PC1, y = PC2)) + geom_point() + theme_bw() + labs(title = "PCA analysis", x = "PC1", y = "PC2")
  print(p)
}
