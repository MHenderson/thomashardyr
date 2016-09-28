library(gutenbergr)

mayor <- gutenberg_download(143)$text

devtools::use_data(mayor, overwrite = TRUE)
