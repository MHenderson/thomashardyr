native <- gutenbergr::gutenberg_download(122)$text

devtools::use_data(native, overwrite = TRUE)
