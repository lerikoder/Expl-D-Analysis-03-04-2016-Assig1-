# "Programa plot1.R"


# Open device to plot on
png(filename = "plot1.png", width = 480, height = 480)

# Plot 1: Hystogram of Global_active_power
with(df02, hist(Global_active_power, main = "Global Active Power", col = "red",
                xlab = "Global Active Power (kilowatts)"))
dev.off()

