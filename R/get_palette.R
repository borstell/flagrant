#' Get palette
#'
#' This function inputs a country name returns a color palette based on the country's flag
#'
#' @param country The name of a country, either official English name (e.g. "Sweden"), or ISO-2/3 (e.g. "SE"/"SWE")
#' @return A color palette
#' @export
get_palette <- function(country) {
  country_palettes <- flagrant::country_palettes
  if (nchar(country) < 4) {
    country <- toupper(country)
    ifelse(nchar(country)==2, palette <- country_palettes[country_palettes$iso2==country,]$palette[[1]], palette <- country_palettes[country_palettes$iso3==country,]$palette[[1]])
  }
  else {
    palette <- country_palettes[country_palettes$country==country,]$palette[[1]]
  }
  return(palette)
}
