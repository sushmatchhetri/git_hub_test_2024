# a script for installing (if needed) and loading packages for this project.

packageLoad <-
  function(x) {
    for (i in 1:length(x)) {
      if (!x[i] %in% installed.packages()) {
        install.packages(x[i])
      }
      library(x[i], character.only = TRUE)
    }
  }

# create a string of package names
packages <- c('tidyverse',
              'palmerpenguins',
              'rmarkdown', 'magick', 'cowplot', 'zoo', 'grid', 'httr', 'GET', 'jpeg', 'dplyr', 'ggimage', 'viridis', 'lterdatasampler', 'rstatix', 'lubridate', 'purrr', 'MASS', 'sandwich', 'lmtest', 'jsonlite')

# use the packageLoad function we created on those packages
packageLoad(packages)


