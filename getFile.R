    # Program getFile.R

    url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
    destFile <- "get-data-household_power_consumption.zip"
    download.file(url, destFile, mode = "wb")
    unzip(destFile, list = FALSE, overwrite = TRUE,
      junkpaths = TRUE, exdir = ".") 
