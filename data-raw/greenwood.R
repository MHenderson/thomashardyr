greenwood <- gutenbergr::gutenberg_download(2662)$text

greenwood <- greenwood[9:length(greenwood)]

devtools::use_data(greenwood, overwrite = TRUE)
