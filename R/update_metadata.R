update_title = function(path, title) {
  if (path == title) title = fs::path_ext_remove(title)

  update_metadata(path, "title", title)
}

update_author = function(path, author) {
  update_metadata(path, "author", author)
}

update_metadata = function(path, key, new_value) {
  original_file = readLines(path)

  substituted = sub(
    paste0("(?<=^", key, ":).*"),
    paste0(' "', new_value, '"'),
    original_file,
    perl = T,
  )

  writeLines(substituted, path)
}
