## http://blue.for.msu.edu/lab-notes/NOAA_0.1-1/NOAA-ws-data.pdf

file <- "ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-history.csv"
repeat {
  try(download.file(file,"isd-history.csv", quiet = TRUE))
  if (file.info("isd-history.csv")$size > 0) {
    break
  }
}
st_raw <- read.csv("isd-history.csv")
dim(st)
names(st)

st <- st_raw
st <- st[st$CTRY == "FR", ]

st$LAT <- st$LAT/1000
st$LON <- st$LON/1000
st$ELEV <- st$ELEV/10
st$BEGIN <- as.numeric(substr(st$BEGIN, 1, 4))
st$END <- as.numeric(substr(st$END, 1, 4))


mi.list <- st[(st$BEGIN <= 2014 & st$END >= 2014 & !is.na(st$BEGIN)), ]

outputs <- as.data.frame(matrix(NA, dim(mi.list)[1],2))
names(outputs) <- c("FILE", "STATUS")
for (y in 2014:2014) {
  y.mi.list <- mi.list[mi.list$BEGIN <= y & mi.list$END >= y, ]
  for (s in 1:dim(y.mi.list)[1]) {
    outputs[s, 1] <- paste(sprintf("%06d", y.mi.list[s, 1]), "-", sprintf("%05d", y.mi.list[s, 2]), "-", y, ".gz", sep = "")
    wget <- paste("wget -P data/raw ftp://ftp.ncdc.noaa.gov/pub/data/noaa/",
                  y, "/", outputs[s, 1], sep = "")
    print(wget)
    outputs[s, 2] <- try(system(wget, intern = FALSE,
                                ignore.stderr = TRUE))
  }
}
head(outputs)

system("gunzip -r data/raw", intern = FALSE, ignore.stderr = TRUE) 
files <- list.files("data/raw") 






