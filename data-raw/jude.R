# $ grep -n JUDE pg153.txt  
# 26:***START OF THE PROJECT GUTENBERG EBOOK JUDE THE OBSCURE***
# 35:JUDE THE OBSCURE
begin_skip <- 34
# $ wc -l pg153.txt    
# 18035 pg153.txt
# $ grep -n END pg153.txt   
# 17677:***END OF THE PROJECT GUTENBERG EBOOK JUDE THE OBSCURE***
# 17996:SEND DONATIONS or determine the status of compliance for any
# $ echo "18035 - 17677" | bc
# 358
end_skip <- 359
book_url <- "http://www.gutenberg.org/cache/epub/153/pg153.txt"

jude <- readr::read_lines(book_url, skip = begin_skip)
jude <- jude[1:(length(jude) - end_skip)]
jude <- jude[!is.na(jude)]

devtools::use_data(jude, overwrite = TRUE)
