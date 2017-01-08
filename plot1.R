# plot1.R is an R code that constructs plot1.png

## 1. Read the data found in the current working directory
## we assume we are at the folder that contains the file

data <- read.csv(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), sep=";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

## 2. Generate plot 1

png('plot1.png', width = 480, height = 480)
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()