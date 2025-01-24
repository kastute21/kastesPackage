
nice_plot <- function(x, y, plot_type = "scatter", title = "Title", xlab = "X Axis", ylab = "Y Axis") {
  palettes <- c("BottleRocket1", "BottleRocket2", "Rushmore1", "Royal1", "Royal2", "Zissou1", "Darjeeling1", "Darjeeling2",
                "Chevalier1" , "FantasticFox1" , "Moonrise1", "Moonrise2", "Moonrise3", "Cavalcanti1", "GrandBudapest1",
                "GrandBudapest2", "IsleofDogs1", "IsleofDogs2", "FrenchDispatch", "AsteroidCity2", "AsteroidCity2", "AsteroidCity3")
  if (plot_type == "scatter") {
    plot(x, y, main = title, xlab = xlab, ylab = ylab, col = wes_palette(name=sample(palettes,1),1), pch = 19, cex = 1.5)
  } else if (plot_type == "line") {
    plot(x, y, type = "l", main = title, xlab = xlab, ylab = ylab, col = wes_palette(name=sample(palettes,1),1), lwd = 2)
  } else if (plot_type == "hist") {
    hist(x, main = title, xlab = xlab, col = wes_palette(name=sample(palettes,1)),1)
  } else {
    stop("Error: invalid plot type")
  }
}

libraries <- function(x = all) {
  main <- c("ggplot2", "dplyr", "tidyr","MASS")
  fun <- c("memer", "cowsay", "wesanderson")
  plot <- c("plotly", "ggplot2", "gganimate", "ggstatsplot")
  all <- c(main, fun, plot)
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


