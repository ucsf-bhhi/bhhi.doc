bhhi_doc = function(name, title = name, author = NULL, open = interactive()) {
  # check that format extension is installed
  if (!check_bhhi_quarto())
    # install format if it's not present
    bhhi_install_format()

  # get template & save with file name
  path = fs::path_ext_set(name, "qmd")
  bhhi_quarto_template(path)

  # update template with title
  update_title(path, title)

  # if provided, update template with author
  if (!is.null(author))
    update_author(path, author)

  if (open)
    file.edit(path)
}
