.onLoad = function(libname, pkgname) {
  bhhi_reactable_options()

  ggplot2::theme_set(bhhi_ggplot_theme())

  thematic::thematic_rmd(
    bg = bhhi_bg(),
    fg = bhhi_fg(),
    accent = bhhi_accent(),
    font = bhhi_font()
  )
}
