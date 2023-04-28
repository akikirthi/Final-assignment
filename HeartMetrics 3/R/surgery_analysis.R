#' Analyze the difference between surgery=0 and surgery=1 for the heart dataset
#'
#' @param data A data frame containing the heart dataset
#'
#' @return A list containing the results of the analysis
#'
#' @importFrom dplyr filter summarise tibble
#'
#' @examples
#' # Analyze the difference between surgery=0 and surgery=1 for the heart dataset
#' analysis <- surgery_analysis(heart)
#' @export
surgery_analysis <- function(data) {
  # Load required packages
  library(dplyr)
  library(tibble)

  # Filter data by surgery=0 and surgery=1
  no_surgery <- filter(data, surgery == 0)
  surgery <- filter(data, surgery == 1)

  # Calculate summary statistics
  no_surgery_summary <- no_surgery %>%
    summarise(mean_age = mean(age),
              sd_age = sd(age),
              n = n())

  surgery_summary <- surgery %>%
    summarise(mean_age = mean(age),
              sd_age = sd(age),
              n = n())

  # Perform t-test
  t_test <- t.test(no_surgery$age, surgery$age)

  # Create list of results
  results <- list(
    no_surgery_summary = no_surgery_summary,
    surgery_summary = surgery_summary,
    t_test = t_test
  )

  # Return list of results
  return(results)
}
