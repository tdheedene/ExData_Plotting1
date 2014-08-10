filename <- "household_power_consumption.txt"
png(file="plot2.png", width=480, height=480, units="px")
Sys.setlocale("LC_TIME", "en_US")
data <- read.csv(filename, sep=";", na.strings="?", colClasses = "character")
subdata <- data[data$Date == "2/2/2007" | data$Date == "1/2/2007", ]
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)
subdata$Date <- strptime(paste(subdata$Date,subdata$Time), "%d/%m/%Y %H:%M:%S")
plot(subdata$Date, subdata$Global_active_power, type='l', ylab="Global Active Power (kilowatts)", xlab="")
#dev.copy(png, file="plot2.png", width=480, height=480, units="px")
dev.off()