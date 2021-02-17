#Plot 4
#Load data
file <- "./data/household_power_consumption.txt" 
data <- read.table(file, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".") 
data1 <- data[data$Date %in% c("1/2/2007","2/2/2007") ,] 

#prep
GlobalActivePower <- as.numeric(data1$Global_active_power)
datetime1 <- paste(data1$Date,data1$Time, sep=" ")
datetime <- strptime(datetime1, "%d/%m/%Y %H:%M:%S")

#generate plots
png(file = "plot4.png",width = 480, height = 480)
par(mfrow=c(2,2))

# 4.1 (Plot2)
plot(datetime,GlobalActivePower,type="l", xlab ="", ylab="Global Active Power (kilowatts)")

# 4.2 voltage vs datetime
with(data1, plot(datetime,Voltage,type="l"))

# 4.3 (Plot3)
with(data1, plot(datetime,Sub_metering_1,type="l",col="black", xlab="", ylab="Energy sub metering"))
with(data1, lines(datetime,Sub_metering_2,type="l",col="red"))
with(data1, lines(datetime,Sub_metering_3,type="l",col="blue"))
legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

# 4.4 global reactive power vs datetime
with(data1, plot(datetime,Global_reactive_power,type="l"))
dev.off()