# Program readFile.R

readFile <- function(inFile = "household_power_consumption.txt"){
    library(data.table)

    # reading the dataset in a dataframe
    df01 <- fread(inFile , sep = ";", na.strings = c("?"))

    # subsetting the dataframe
    df01 <- subset(df01, Date == "1/2/2007" | Date == "2/2/2007")
    
    # Merging Date and Time and converting into POSIXct format
    df02 <- transform(df01, dateTime = as.POSIXct(paste(Date, Time), tz = "", "%d/%m/%Y %T"))
    return(df02)
}
  