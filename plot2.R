readFile()

# Open device to plot on
windows(480, 480)


# Plot 2: Global_active_power vs. Date
with(df02, plot(newDate, Global_active_power, main = "Global Active Power", col = "black",
                type = "l", xlab = "Date Time"))
dev.copy(png, "plot2.png")
dev.off()
