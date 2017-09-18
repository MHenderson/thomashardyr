tess <- gutenbergr::gutenberg_download(110)$text

tess <- tess[6:length(tess)]

devtools::use_data(tess, overwrite = TRUE)
