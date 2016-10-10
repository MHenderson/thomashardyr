jude <- gutenbergr::gutenberg_download(153)$text

devtools::use_data(jude, overwrite = TRUE)
