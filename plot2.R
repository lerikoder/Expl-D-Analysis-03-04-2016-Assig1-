
# Program plot2.R
# Open device to plot on
library(data.table)
png("plot2.png", 480, 480)


# Plot 2: Global_active_power vs. Date
with(df02, plot(dateTime, Global_active_power, 
                main = "Global Active Power", 
                ylab = "Global Active Power (kilowatts)",
                xlab = "Date Time", col = "black", 
                type = "l"))

dev.off()

