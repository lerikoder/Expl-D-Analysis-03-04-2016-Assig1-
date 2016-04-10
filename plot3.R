
# Program plot3.R

# Open device to plot on
png("plot3.png", 480, 480)

# Plot 3: Sub_metering_1 vs Date
#         Sub_metering_2 vs Date
#         Sub_metering_3 vs Date
with(df02, plot(dateTime, Sub_metering_1, col = "black", type = "l", 
                main = "Submetering",  
                xlab = "Date Time", 
                ylab = "Energy sub metering"))
with(df02, lines(dateTime, Sub_metering_2, col = "red"))
with(df02, lines(dateTime, Sub_metering_3, col = "blue"))
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ", "Sub_metering_2  ",
                                                  "Sub_metering_3  "),lty=c(1,1), bty="y", cex=.5) 


dev.off()

