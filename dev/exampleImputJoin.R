# create test input


# Example data
# --------------------
dataset1 = data.frame(PK = 1:26,
                      LETTERS = LETTERS,
                      other = sample(1:1000,size = 26))
dataset2 = data.frame(SK = 1:(26*1),
                      letters = letters,
                      vars = sample(1:1000,size = 26))
# reduce size
dataset1 <- dataset1[1:20, ]
dataset2 <- dataset2[c(1:4,12:26), ]

# write example data
write.table(dataset1, "input1-join.tabular", sep = "\t", row.names = FALSE)
write.table(dataset2, "input2-join.tabular", sep = "\t", row.names = FALSE)
