# Convert xlsx files to tabular

convertfile <- function(file, sheetNb , newName){
  library("openxlsx")
  input <- read.xlsx(file,
                     sheet = sheetNb)
  
  write.table(input,newName , row.names = FALSE, sep ="\t", quote = FALSE)
}

convertfile("/home/simon/GitHub/BricksEtBrocks/activités/vne-activite29a(1)/vne_oiseauxvide.xlsx", 
            sheetNb = 2,
            newName = "temp1.tabular")
