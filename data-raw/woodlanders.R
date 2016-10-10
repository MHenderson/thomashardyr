woodlanders <- gutenbergr::gutenberg_download(482)$text

devtools::use_data(woodlanders, overwrite = TRUE)
