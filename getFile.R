getFile <- function(fileName = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                    dirBase = "./EDA_assig")
{
    # 
    if(!file.exists(dirBase)){
       dir.create(dirBase)
    }
    # Dowload data set 
    destfile <- paste(dirBase,
                      "household_power_consumption", sep = "/")
    download.file(url, destfile)
    
    # Unzip data set
    unzip(destfile,junkpaths = TRUE)
}
