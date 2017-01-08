# plot2.R is an R code that constructs plot2.png

## 1. Read the data found in the current working directory
## we assume we are at the folder that contains the file

data <- read.csv("household_power_consumption.txt", header = T, sep = ';', na.strings = "?", nrows = 2075259, check.names = F, stringsAsFactors = F, comment.char = "", quote = '\"')
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

## Subset the data
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))

## Convert dates
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Generating Plot 2

png('plot2.png', width = 480, height = 480)
plot(data$Global_active_power ~ data$Datetime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
dev.off()