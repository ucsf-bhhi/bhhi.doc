.onLoad = function(libname, pkgname) {
  bhhi_reactable_options()

  ggplot2::theme_set(bhhi_ggplot_theme())

  thematic::thematic_rmd(
    bg = "#fff3d9",
    fg = "black",
    accent = "#78c2ad",
    font = "Lato"
  )
}
