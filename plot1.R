readFile()

# Open device to plot on
windows(480, 480)

# Plot 1: Hystogram of Global_active_power
with(df02, hist(Global_active_power, main = "Global Active Power", col = "red",
                xlab = "Global Active Power (kilowatts)"))
dev.copy(png, "plot1.png")
dev.off()

