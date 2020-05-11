#' Make image data frame
#'
#' This function inputs an image (file or url) and outputs a data frame
#' with coloring data for plotting
#'
#' @param image An image filename or url
#' @param scale Scale the image (default=100, i.e. 100pt)
#' @param bg Set background if alpha (default="black"; options are "white", "none")
#' @return A data frame
#' @export
make_image_df <- function(image, scale=100, bg="black") {
  img <- magick::image_read(image)
  img <- magick::image_background(img, bg)
  img <- magick::image_scale(img, geometry=paste0(scale,"x"))
  img <- magick::image_channel(img)
  img_raster <- grDevices::as.raster(img)

  threeify <- function(color) {
    dec <- broman::hex2dec(substr(color, 2,7))
    return(ifelse(dec == 0, NA, ifelse(dec > 9539985, 3, ifelse(dec > 5855577, 2, 1))))
  }

  xs <- c()
  ys <- c()
  cols <- c()

  for (y in 1:nrow(img_raster)) {
    for (x in 1:ncol(img_raster)){
      xs <- c(xs, x)
      ys <- c(ys, nrow(img_raster)-y)
      cols <- c(cols, threeify(img_raster[y,x]))
    }
  }
  df <- data.frame(x=xs, y=ys, color=cols)
  return(df)
}
