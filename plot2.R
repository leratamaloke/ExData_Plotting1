#Plot 2
#Load data
file <- "./data/household_power_consumption.txt" 
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".") 
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

#prep
datetime1 <- paste(data1$Date, data1$Time, sep = " ")
datetime <- strptime(datetime1, "%d/%m/%Y %H:%M:%S")

#generate plot
png(file = "plot2.png",width = 480, height = 480)
plot(datetime, GlobalActivePower, type = "l", xlab= "", ylab = "Global Active Power (kilowatts)")
dev.off()