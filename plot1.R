#Assignment 1 - plot 1
filename <- "household_power_consumption.txt"
png(file="plot1.png", width=480, height=480, units="px")
data <- read.csv(filename, sep=";", na.strings="?", colClasses = "character")
subdata <- data[data$Date == "2/2/2007" | data$Date == "1/2/2007", ]
subdata$Global_active_power <- as.numeric(subdata$Global_active_power)
hist(subdata$Global_active_power, xlab="Global Active Power (kilowatts)", main = "Global Active Power", col="red")
#dev.copy(png, file="plot1.png", width=480, height=480, units="px")
dev.off()