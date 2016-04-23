# $ grep -n "THE WOODLANDERS" pg482.txt
# 19:*** START OF THIS PROJECT GUTENBERG EBOOK THE WOODLANDERS ***
# 26:THE WOODLANDERS
# 15038:*** END OF THIS PROJECT GUTENBERG EBOOK THE WOODLANDERS ***
begin_skip <- 26 - 1
# $ wc -l pg482.txt 
# 15396 pg482.txt
# $ grep -n "END" pg482.txt 
# 15038:*** END OF THIS PROJECT GUTENBERG EBOOK THE WOODLANDERS ***
# 15356:SEND DONATIONS or determine the status of compliance for any
# $ echo "15396 - 15038" | bc
# 358
end_skip <- 358 + 3
book_url <- "http://www.gutenberg.org/cache/epub/482/pg482.txt"

woodlanders <- readr::read_lines(book_url, skip = begin_skip)
woodlanders <- woodlanders[1:(length(woodlanders) - end_skip)]
woodlanders <- woodlanders[!is.na(woodlanders)]

devtools::use_data(woodlanders, overwrite = TRUE)
