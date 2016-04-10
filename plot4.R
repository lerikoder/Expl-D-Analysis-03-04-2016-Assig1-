

# Plot 4 contains 4 subplots

png("plot4.png", 480, 480)

oldPar <- par()
par(mfrow = c(2, 2))

# Plot 4-1: Hystogram of Global_active_power
with(df02, plot(dateTime, Global_active_power, main = "Global Active Power", col = "black",
                type = "l", xlab = "Date Time",
                ylab = "Global Active Power"))

with(df02, plot(dateTime, Voltage, main = "Voltage", col = "black",
                type = "l", xlab = "Date Time"))

# Plot 4-3: Sub_metering_1 vs Date
#           Sub_metering_2 vs Date
#           Sub_metering_3 vs Date
with(df02, plot(dateTime, Sub_metering_1, main = "Submetering", col = "black", type = "l", 
                xlab = "Date Time", ylab = "Energy sub metering"))
with(df02, lines(dateTime, Sub_metering_2, col = "red"))
with(df02, lines(dateTime, Sub_metering_3, col = "blue"))
legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ", "Sub_metering_2  ",
                                                  "Sub_metering_3  "),lty=c(1,1), bty="y", cex=.5) 
# Plot 4-4: Global Reactive Power
with(df02, plot(dateTime, Global_reactive_power, main = "Global Reactive Power", type = "l",
                xlab = "Date Time", 
                ylab = "Global Reactive Power", 
                col = "black"))

dev.off()
