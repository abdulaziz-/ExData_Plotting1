# plot2.R is an R code that constructs plot2.png

## 1. Read the data found in the current working directory
## we assume we are at the folder that contains the file

# only read the lines that match the date subset

data <- read.csv(text = grep("^[1,2]/2/2007", readLines("household_power_consumption.txt"), value = TRUE), sep=";", col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

png('plot2.png', width = 480, height = 480)
plot(data$Global_active_power ~ data$Datetime, type = "l",ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()