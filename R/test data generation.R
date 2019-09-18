# Generate data for tests
library(dplyr)

data <- data.frame(group = rep(c('A','B'), 10), value = rnorm(20, 10,3))
write.table(data, "testGalaxy.tab", sep ='\t', row.names = FALSE)
getwd()

# add a column to iris (size class) to test for multiple anova
data <- iris
# sort by size and species
datafinal <- iris %>%
  arrange(Species, Sepal.Length)

datafinal <- data.frame(datafinal, Class.Size = rep(rep(c('A','B'),each = 25),3))
write.table(datafinal, "/home/simon/GitHub/Galaxy-Bricks/tools/test-data/irisPlus.tabular", sep = "\t", row.names = FALSE)
