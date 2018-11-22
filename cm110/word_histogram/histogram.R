words <- readLines("words.txt")
"hello"
Length <- nchar(words)
hist_dat <- table(Length)
write.table(hist_dat, "histogram.tsv", sep = "\t", row.names = FALSE, quote = FALSE)
