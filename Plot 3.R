
# plot3
datetime <- strptime(paste(dateddata$Date, dateddata$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
activepower <- as.numeric(dateddata$Global_active_power)
subMetering1 <- as.numeric(dateddata$Sub_metering_1)
subMetering2 <- as.numeric(dateddata$Sub_metering_2)
subMetering3 <- as.numeric(dateddata$Sub_metering_3)


plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab="")
lines(datetime, subMetering2, type="l", col="red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

