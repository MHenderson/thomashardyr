maddingcrowd <- gutenbergr::gutenberg_download(27)$text

maddingcrowd <- maddingcrowd[30:length(maddingcrowd)]

devtools::use_data(maddingcrowd, overwrite = TRUE)
