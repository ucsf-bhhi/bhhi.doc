#' BHHI Color Palette
#'
#' Returns a named vector with the BHHI qualitative color palette hex codes.
#'
#' @param colors A character vector with the name(s) of the requested color(s).
#'   The color names are: "orange", "green", "blue", "purple", "grey", "red",
#'   "yellow", and "light blue". Leave empty to return the entire palette.
#'
#' @return A character vector with the hex codes for the requested color
#'   name(s).
#' @export
#'
#' @examples
#' bhhi_palette("red")
#' bhhi_palette(c("orange", "green"))
#' bhhi_palette()
bhhi_palette = function(colors) {
  bhhi_palette = thematic::thematic_theme(
    bg = bhhi_bg(), fg = bhhi_bg(), accent = bhhi_accent()
  )$qualitative

  names(bhhi_palette) <- c(
    "orange", "green", "blue", "purple", "grey", "red", "yellow", "light blue"
  )

  bhhi_palette[colors]
}

bhhi_bg = function() "#fff3d9"
bhhi_fg = function() "black"
bhhi_accent = function() "#78c2ad"
bhhi_font = function() "Lato"
