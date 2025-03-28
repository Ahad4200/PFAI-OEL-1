# List of required packages
required_packages <- c("knitr", "ggplot2", "rmarkdown")

# Install missing packages
install_if_missing <- function(packages) {
  new_packages <- packages[!(packages %in% installed.packages()[, "Package"])]
  if (length(new_packages) > 0) {
    install.packages(new_packages, dependencies = TRUE)
  }
}

install_if_missing(required_packages)

# Load the packages
lapply(required_packages, library, character.only = TRUE)
