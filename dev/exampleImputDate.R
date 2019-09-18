# create test input


# Example data
# --------------------
dataset = data.frame(PK = 1:26,
                      LETTERS = LETTERS,
                      other = paste0(round(runif(26,1,28)),
                                     sample(sep, size = 26, replace = TRUE),
                                     round(runif(26,1,12)),
                                     sample(sep, size = 26, replace = TRUE),
                                     round(runif(26,1900,2020))))

# write example data
write.table(dataset, "input-lubridate.tabular", sep = "\t", row.names = FALSE)

