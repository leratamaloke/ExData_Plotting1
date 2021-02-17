#Plot 3
#Load data
file <- "./data/household_power_consumption.txt" 
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".") 
data1 <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,] 

#generate plot
png(file = "plot3.png", width = 480, height = 480)
with(data1, plot(datetime, Sub_metering_1, type = "l", col = "black", xlab = "", ylab = "Energy sub metering"))
with(data1, lines(datetime, Sub_metering_2, type = "l", col = "red"))
with(data1, lines(datetime, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()