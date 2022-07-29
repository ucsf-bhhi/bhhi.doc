bhhi_ggplot_theme = function() {
  ggplot2::theme_minimal(base_family = 'Lato') +
    ggplot2::theme(
      # disable in between gridlines
      panel.grid.minor = ggplot2::element_blank(),
      # set color of gridlines
      panel.grid.major = ggplot2::element_line(color = 'grey90')
    )
}
