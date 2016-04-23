# $ grep -n RETURN pg122.txt                              
# 19:*** START OF THIS PROJECT GUTENBERG EBOOK RETURN OF THE NATIVE ***
# 30:THE RETURN OF THE NATIVE
# 16521:*** END OF THIS PROJECT GUTENBERG EBOOK RETURN OF THE NATIVE ***
begin_skip <- 30 - 1
# $ wc -l pg122.txt 
# 16879 pg122.txt
# $ grep -n "END" pg122.txt 
# 16521:*** END OF THIS PROJECT GUTENBERG EBOOK RETURN OF THE NATIVE ***
# 16839:SEND DONATIONS or determine the status of compliance for any
# $ echo "18007 - 17649" | bc
# 358
end_skip <- 358 + 3
book_url <- "http://www.gutenberg.org/cache/epub/122/pg122.txt"

native <- readr::read_lines(book_url, skip = begin_skip)
native <- native[1:(length(native) - end_skip)]
native <- native[!is.na(native)]

devtools::use_data(native, overwrite = TRUE)
