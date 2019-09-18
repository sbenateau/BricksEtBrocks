library(data.table)

# Convert xlsx files to tabular
convertfile <- function(file, sheetNb = 1 , newName, sep = "\t"){
  library("openxlsx")
  input <- read.xlsx(file,
                     sheet = sheetNb)
  
  write.table(input,newName , row.names = FALSE, sep = sep, quote = FALSE)
}

# activite 13 Escargots

convertfile("/home/simon/GitHub/BricksEtBrocks/activités/vne-activite13a/atelier_vn_escargotvide.xlsx",
            newName = "atelier_vn_escargotvide.tabular")

# activite sauvage

convertfile("/home/simon/GitHub/BricksEtBrocks/activités/vne-activite32bis/vne_sauvagesvide.xlsx",
            newName = "vne_sauvages.tabular")

# activité 29 Oiseau 

convertfile("/home/simon/GitHub/BricksEtBrocks/activités/vne-activite29a(1)/vne_oiseauxvide.xlsx", 
            sheetNb = 2,
            newName = "temp1.tabular")

#Activite 20 SPIPoll




datae <- fread("/home/simon/GitHub/BricksEtBrocks/activités/vne-activite20a/vne_spipollvide.csv", encoding = "Latin-1")
datae <- as.data.frame(datae)
# datae <- datae[, c(1, 2, 3, 5, 6, 7)]

colnames <- colnames(datae)
colnames <- gsub("è","e",colnames)
colnames <- gsub("é","e",colnames)
colnames(datae) <- colnames

for (i in 1:ncol(datae)){
  datae[ ,i] <- gsub("è","e",datae[ ,i])
  datae[ ,i] <- gsub("é","e",datae[ ,i])
  datae[ ,i] <- gsub("à","a",datae[ ,i])
  datae[ ,i] <- gsub("|","",datae[ ,i], fixed = TRUE)
  datae[ ,i] <- gsub("<","",datae[ ,i])
  datae[ ,i] <- gsub(">","",datae[ ,i])
}

head(datae)

fwrite(datae, "/home/simon/GitHub/BricksEtBrocks/activités/vne-activite20a/vne_spipollvide.tabular", sep = "\t", row.names = FALSE)