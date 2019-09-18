# get the number of classes and highschools
library(dplyr)

dataVNE <- read.table("/home/simon/Documents/VNE.csv", sep =";", header = TRUE)
levels(dataVNE$niveau)

# Niveau pour de la données :
CollegeLycee <- c("1ere", "2nde", "2nde MPS", "3e", "4e", "5e", "6e", "Terminale")

# Nombre de classe au cours du temps
DataCollLycee <- dataVNE %>%
  filter(niveau %in% CollegeLycee) %>% 
  group_by(anneescol) %>%
  count()
plot(DataCollLycee$anneescol,DataCollLycee$n)

# Nombre d'établissement
DataCollLycee <- dataVNE %>%
  filter(niveau %in% CollegeLycee) %>% 
  select(name,anneescol) %>%
  distinct() %>%
  group_by(anneescol) %>%
  count()
plot(DataCollLycee$anneescol,DataCollLycee$n)

