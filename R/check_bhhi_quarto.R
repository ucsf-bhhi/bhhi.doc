check_bhhi_quarto = function() {
  extension_dir = "_extensions/ucsf-bhhi/bhhi-quarto"

  extensions_yml_exists = file.exists(
    fs::path(extension_dir, "_extension.yml")
  )

  theme_scss_exists = file.exists(
    fs::path(extension_dir, "theme.scss")
  )

  extensions_yml_exists & theme_scss_exists
}
