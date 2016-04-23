# $ grep -n TESS pg110.txt 
# 28:***START OF THE PROJECT GUTENBERG EBOOK TESS OF THE D'URBERVILLES***
# 36:TESS OF THE D'URBERVILLES
begin_skip <- 36 - 1
# wc -l pg110.txt 
# 18007 pg110.txt
# $ grep -n "END OF THE PROJECT" pg110.txt 
# 17649:***END OF THE PROJECT GUTENBERG EBOOK TESS OF THE D'URBERVILLES***
# $ echo "18007 - 17649" | bc
# 358
end_skip <- 358 + 1
book_url <- "http://www.gutenberg.org/cache/epub/110/pg110.txt"

tess <- readr::read_lines(book_url, skip = begin_skip)
tess <- tess[1:(length(tess) - end_skip)]
tess <- tess[!is.na(tess)]

devtools::use_data(tess, overwrite = TRUE)
