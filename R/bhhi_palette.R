#' BHHI Color Palette
#'
#' Returns a named vector with the BHHI qualitative color palette hex codes.
#'
#' @param colors A character vector with the name(s) of the requested color(s).
#'   The color names are: "orange", "green", "blue", "purple", "grey", "red",
#'   "yellow", and "light blue". Leave empty to return the entire palette.
#' @param names Should the returned vector have named values? Defaults to FALSE
#'   to play nicely with ggplot.
#'
#' @return A character vector with the hex codes for the requested color
#'   name(s).
#' @export
#'
#' @examples
#' bhhi_palette("red")
#' bhhi_palette("red", names = TRUE)
#' bhhi_palette(c("orange", "green"))
#' bhhi_palette()
bhhi_palette = function(colors, names = FALSE) {
  bhhi_palette = thematic::thematic_theme(
    bg = bhhi_bg(), fg = bhhi_bg(), accent = bhhi_accent()
  )$qualitative

  names(bhhi_palette) <- c(
    "orange", "green", "blue", "purple", "grey", "red", "yellow", "light blue"
  )

  return_colors = bhhi_palette[colors]

  # ggplot doesn't like named hex code vectors so remove them by default
  if (!names) {
    names(return_colors) <- NULL
  }

  return_colors
}

bhhi_bg = function() "#fff3d9"
bhhi_fg = function() "black"
bhhi_accent = function() "#78c2ad"
bhhi_font = function() "Lato"
