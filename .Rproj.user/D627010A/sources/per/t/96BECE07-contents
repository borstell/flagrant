#' Expand palette
#'
#' This function inputs a color palette (vector) and expands the colors by repeating them in lighter shades
#'
#' @param palette A color palette (vector of hex colors) to be expanded
#' @return An expanded color palette
#' @export
expand_palette <- function(palette) {
  longer_palette <- c()
  for (color in palette) {
    longer_palette <- c(longer_palette, color, tolower(colorspace::lighten(color, 0.5)))
  }
  return(longer_palette)
}
