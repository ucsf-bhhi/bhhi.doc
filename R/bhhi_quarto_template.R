bhhi_quarto_template = function(path = "template.qmd") {
  download.file(
    "https://github.com/ucsf-bhhi/bhhi-quarto/raw/main/template.qmd",
    path,
    quiet = TRUE
  )
}
