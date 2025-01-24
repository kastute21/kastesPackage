libraries <- function(x = all) {
  main <- c("ggplot2", "dplyr", "tidyr","MASS")
  plot <- c("plotly", "ggplot2", "gganimate", "ggstatsplot")
  all <- c(main, plot)
  to_install <- all[!all %in% rownames(installed.packages())]
  if (length(to_install) > 0) {
    install.packages(to_install)
  }
  if ("main" %in% x) {
    for (pkg in main) {
      library(pkg, character.only = T)
    }
  }
  if ("plot" %in% x) {
    for (pkg in plot) {
      library(pkg, character.only = T)
    }
  }
}
