tess <- gutenbergr::gutenberg_download(110)$text

devtools::use_data(tess, overwrite = TRUE)
