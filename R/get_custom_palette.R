#' Get custom palette
#'
#' This function inputs a country name and a required palette length
#' and returns a color palette based on the country's flag with an
#' expanded set of colors (if needed) and colors sorted
#'
#' @param country The name of a country, either official English name (e.g. "Sweden"), or ISO-2/3 (e.g. "SE"/"SWE")
#' @param n The number of colors required
#' @return A color palette
#' @export
get_custom_palette <- function(country="Sweden", n=3) {
  palette <- flagrant::get_palette(country)
  if (length(palette) >= n) {
    palette <- palette
  }
  else {
    palette <- flagrant::expand_palette(palette)
  }
  return(sort(palette[1:n]))
}
