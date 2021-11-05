##Working directory (to be set manually)
setwd("C:/Users/Rudra Guin/Documents/UMich/Biostatistics_625/biostat625_final_project")


data <- read.delim(file = 'clinical.tsv', sep = '\t', header = TRUE)
data[data == "\'--"] <- "NULL"
is.na(data) <- data == "NULL"
data <- data[ , colSums(is.na(data)) < nrow(data)]

unique(data$vital_status)