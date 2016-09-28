library(gutenbergr)

native <- gutenberg_download(122)$text

devtools::use_data(native, overwrite = TRUE)
