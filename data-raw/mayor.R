mayor <- gutenbergr::gutenberg_download(143)$text

devtools::use_data(mayor, overwrite = TRUE)
