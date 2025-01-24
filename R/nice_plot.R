nice_plot <- function(x, y, plot_type = "scatter", title = "Title", xlab = "X Axis", ylab = "Y Axis") {
  palettes <- c("BottleRocket1", "BottleRocket2", "Rushmore1", "Royal1", "Royal2", "Zissou1", "Darjeeling1", "Darjeeling2",
                "Chevalier1" , "FantasticFox1" , "Moonrise1", "Moonrise2", "Moonrise3", "Cavalcanti1", "GrandBudapest1",
                "GrandBudapest2", "IsleofDogs1", "IsleofDogs2", "FrenchDispatch", "AsteroidCity2", "AsteroidCity2", "AsteroidCity3")
  if (plot_type == "scatter") {
    plot(x, y, main = title, xlab = xlab, ylab = ylab, col = wes_palette(name=sample(palettes,1),1), pch = 19, cex = 1.5)
  } else if (plot_type == "line") {
    plot(x, y, type = "l", main = title, xlab = xlab, ylab = ylab, col = wes_palette(name=sample(palettes,1),1), lwd = 2)
  } else if (plot_type == "hist") {
    hist(x, main = title, xlab = xlab, col = wes_palette(name=sample(palettes,1)))
  } else {
    stop("Error: invalid plot type")
  }
}
