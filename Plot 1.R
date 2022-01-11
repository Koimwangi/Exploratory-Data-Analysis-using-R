# reading data file
data <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

#Data for the dates 1/2/2007 - 2/2/2007
dateddata <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]

# plot1
a1 <- as.numeric(dateddata$Global_active_power)
hist(a1, col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)")
