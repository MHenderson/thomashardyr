maddingcrowd <- gutenbergr::gutenberg_download(27)$text

devtools::use_data(maddingcrowd, overwrite = TRUE)
