bhhi_install_format = function() {
  quarto_path = quarto::quarto_path()

  if (is.null(quarto_path))
    stop("Quarto not installed. Download Quarto from https://quarto.org/docs/get-started/")

  system2(quarto_path, "install extension --no-prompt ucsf-bhhi/bhhi-quarto")
}
