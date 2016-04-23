# $ grep -n MAYOR pg143.txt
# 22:*** START OF THIS PROJECT GUTENBERG EBOOK THE MAYOR OF CASTERBRIDGE ***
# 36:THE MAYOR OF CASTERBRIDGE
# 13085:*** END OF THIS PROJECT GUTENBERG EBOOK THE MAYOR OF CASTERBRIDGE ***
begin_skip <- 36 - 1
# $ wc -l pg143.txt 
# 13443 pg143.txt
# $ grep -n "END" pg143.txt  
# 8405:"O yes--I remember the story of YOUR FRIEND," said Elizabeth drily,
# 13085:*** END OF THIS PROJECT GUTENBERG EBOOK THE MAYOR OF CASTERBRIDGE ***
# 13403:SEND DONATIONS or determine the status of compliance for any
# $ echo "13443 - 13085" | bc
# 358
end_skip <- 358 + 3
book_url <- "http://www.gutenberg.org/cache/epub/143/pg143.txt"

mayor <- readr::read_lines(book_url, skip = begin_skip)
mayor <- mayor[1:(length(mayor) - end_skip)]
mayor <- mayor[!is.na(mayor)]

devtools::use_data(mayor, overwrite = TRUE)
