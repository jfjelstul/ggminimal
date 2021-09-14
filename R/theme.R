###########################################################################
# Joshua C. Fjelstul, Ph.D.
# a custom ggplot theme
###########################################################################

#' Plot Theme
#'
#' Use this function to add the theme to a plot.
#'
#' @param size Numeric. The size of the font to use.
#'
#' @export
theme_minimal <- function(size = 12) {
  theme <- ggplot2::theme_minimal(base_size = size)
  theme <- theme + ggplot2::theme(
    panel.grid.major = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.background = ggplot2::element_blank(),
    axis.line = ggplot2::element_line(size = 0.5, color = "black", lineend = "round"),
    plot.background = ggplot2::element_rect(fill = "white", color = NA),
    plot.title = ggplot2::element_text(color = "black", size = size, hjust = 0.5, margin = ggplot2::margin(t = 0, r = 0, b = 18, l = 0)),
    axis.title.y = ggplot2::element_text(color = "black", margin = ggplot2::margin(t = 0, r = 18, b = 0, l = 0)),
    axis.title.x = ggplot2::element_text(color = "black", margin = ggplot2::margin(t = 18, r = 0, b = 0, l = 0)),
    axis.text.x = ggplot2::element_text(color = "black", margin = ggplot2::margin(t = 8, r = 0, b = 0, l = 0)),
    axis.text.y = ggplot2::element_text(color = "black", margin = ggplot2::margin(t = 0, r = 8, b = 0, l = 0)),
    strip.background = ggplot2::element_blank(),
    axis.ticks = ggplot2::element_line(size = 0.5, color = "black", lineend = "round"),
    axis.ticks.length = ggplot2::unit(6, "pt"),
    strip.text = ggplot2::element_text(color = "black"),
    plot.margin = ggplot2::margin(t = 20, r = 20, b = 20, l = 20)
  )
  return(theme)
}

#' Plot Titles
#'
#' Use this function to add axis titles and a plot title.
#'
#' @param x String. The title for the x-axis.
#'
#' @param y String. The title for the y-axis.
#'
#' @param main String. The main title for the plot.
#'
#' @export
titles_minimal <- function(x = NULL, y = NULL, title = NULL) {
  list(ggplot2::xlab(x), ggplot2::ylab(y), ggplot2::ggtitle(title))
}

#' Color Palette
#'
#' Use this function to get a vector of colors.
#'
#' @param colors Numeric. The number of colors to return.
#'
#' @export
palette_minimal <- function(colors) {
	palette <- c("#3498DB", "#E74C3C", "#1ABC9C", "#9B59B6")
	output <- palette[1:colors]
	return(output)
}

###########################################################################
# end R script
###########################################################################
