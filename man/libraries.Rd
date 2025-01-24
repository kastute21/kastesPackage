\name{libraries}
\alias{libraries}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
libraries
}
\description{
This function loads and installs (if not yet installed) different packages.
}
\usage{
kastesPackage(x)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{x}{ choice from: all, main and plot. The choice determines which libaries are loaded.
}
}
\details{
These are the possible libraries:
main <- c("ggplot2", "dplyr", "tidyr","MASS")
plot <- c("plotly", "ggplot2", "gganimate", "ggstatsplot")
all <- c(main, plot)
}

## the function is currently defined as:
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
  if ("fun" %in% x) {
    for (pkg in fun) {
      library(pkg, character.only = T)
    }
  }
  if ("plot" %in% x) {
    for (pkg in plot) {
      library(pkg, character.only = T)
    }
  }
}

