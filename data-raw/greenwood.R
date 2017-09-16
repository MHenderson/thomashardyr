greenwood <- gutenbergr::gutenberg_download(2662)$text

devtools::use_data(greenwood, overwrite = TRUE)
