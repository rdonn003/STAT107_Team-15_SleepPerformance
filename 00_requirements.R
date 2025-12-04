packages <- c(
  "tidyverse", "dplyr", "ggplot2", "lubridate", "stringr",
  "readr", "data.table", "GGally", "corrplot", "caret",
  "randomForest", "glmnet", "e1071"
)

install_if_missing <- function(pkg){
  if (!require(pkg, character.only = TRUE)) {
    install.packages(pkg, dependencies = TRUE)
    library(pkg, character.only = TRUE)
  }
}

lapply(packages, install_if_missing)

cat("All packages loaded successfully.\n")
    
