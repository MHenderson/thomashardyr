library(gutenbergr)

maddingcrowd <- gutenberg_download(27)$text

devtools::use_data(maddingcrowd, overwrite = TRUE)
