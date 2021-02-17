#Plot 1

#Load data
file <- "./data/household_power_consumption.txt" 
data <- read.table(file, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec= ".") 
data1 <- data[data$Date %in% c("1/2/2007", "2/2/2007") ,] 

#prep
GlobalActivePower <- as.numeric(data1$Global_active_power)

#generate plot
png(file = "plot1.png",width = 480, height = 480)
hist(GlobalActivePower,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()