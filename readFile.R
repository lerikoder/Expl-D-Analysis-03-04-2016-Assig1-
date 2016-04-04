readFile <- function(fileName = "household_power_consumption.txt")
{
    # 
    df01 <- read.table(fileName, header = TRUE, sep = ";")
    
    
    # Converting Date and Time in a new date
    df01$newDate <- strptime(paste(as.character(df01$Date), 
                                   as.character(df01$Time), sep = " "), 
                             format = "%d/%m/%Y %H:%M:%S")
    
    
    # Convert Global_active_power to numeric 
    df01$Global_active_power <- as.numeric(df01$Global_active_power)
    
    
    # Convert Global_reactive_power to numeric 
    df01$Global_reactive_power <- as.numeric(df01$Global_reactive_power)
    
    
    # Convert Voltage to numeric 
    df01$Voltage <- as.numeric(df01$Voltage)
    
    
    # Convert Global_intensity to numeric 
    df01$Global_intensity <- as.numeric(df01$Global_intensity)   
    
    
    # Convert Sub_metering_1 to numeric
    df01$Sub_metering_1 <- as.numeric(df01$Sub_metering_1)
    
    # Converting Sub_metering_2 to numeric
    df01$Sub_metering_2 <- as.numeric(df01$Sub_metering_2)
    
    # Converting Sub_metering_3 to numeric
    df01$Sub_metering_3 <- as.numeric(df01$Sub_metering_3)
    
    
    # Creating working data frame: 
    #    NA's removed
    #    dates between 01/02/2007 00:00:00 and 02/02/2007 23:59:59
    
    
    fDesde <- strptime("01/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
    fHasta <- strptime("03/02/2007 00:00:00", format = "%d/%m/%Y %H:%M:%S")
    
    df02 <- df01[(df01$newDate > fDesde & df01$newDate < fHasta) &
                     !is.na(df01$Global_active_power) &
                     !is.na(df01$Global_reactive_power) &
                     !is.na(df01$Voltage) &
                     !is.na(df01$Global_intensity) &
                     !is.na(df01$Sub_metering_1) &
                     !is.na(df01$Sub_metering_2) &
                     !is.na(df01$Sub_metering_3),]
    
    
}
