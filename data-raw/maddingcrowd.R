# $ grep -n CROWD pg27.txt 
# 19:*** START OF THIS PROJECT GUTENBERG EBOOK FAR FROM THE MADDING CROWD ***
# 63:                  FAR FROM THE MADDING CROWD
# 16561:*** END OF THIS PROJECT GUTENBERG EBOOK FAR FROM THE MADDING CROWD ***
begin_skip <- 63 - 1
# $ wc -l pg27.txt 
# 16919 pg27.txt
# $ grep -n "END OF THIS" pg27.txt
# 16561:*** END OF THIS PROJECT GUTENBERG EBOOK FAR FROM THE MADDING CROWD ***
# $ echo "16919 - 16561" | bc
# 358
end_skip <- 358 + 3
book_url <- "http://www.gutenberg.org/cache/epub/27/pg27.txt"

maddingcrowd <- readr::read_lines(book_url, skip = begin_skip)
maddingcrowd <- maddingcrowd[1:(length(maddingcrowd) - end_skip)]
maddingcrowd <- maddingcrowd[!is.na(maddingcrowd)]

devtools::use_data(maddingcrowd, overwrite = TRUE)
