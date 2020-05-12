#' Make a flag image
#'
#' This function inputs an image (file or url) and outputs a new
#' image with coloring matching a country flag
#'
#' @param image An image filename or url
#' @param country The name of a country, either official English name (e.g. "Sweden"), or ISO-2/3 (e.g. "SE"/"SWE")
#' @param destination Optional path/filename for saving output image
#' @param scale Scale the image (default=100, i.e. 100pt)
#' @param bg Set background if alpha (default="black"; options are "white", "none")
#' @return A data frame
#' @export
flag_image <- function(image, country="SE", destination="", scale=100, bg="black") {
  palette <- flagrant::get_custom_palette(country, n=3)
  df <- flagrant::make_image_df(image, scale, bg)
  flag_img <- ggplot2::ggplot(df) +
    ggplot2::geom_tile(ggplot2::aes(x=df$x, y=df$y, fill=factor(df$color))) +
    ggplot2::scale_fill_manual(breaks=c(1,2,3), labels=c("1","2","3"), values=palette, guide=FALSE) +
    ggplot2::coord_fixed() +
    ggplot2::theme_void()
  if (destination != "") {
    ggplot2::ggsave(flag_img)
    return(destination)
  }
  else {
    return(flag_img)
  }
}
