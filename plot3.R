sourcefile <- "household_power_consumption.txt"
hpc <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

hpcdates <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(hpcdates$Date, hpcdates$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
agp <- as.numeric(hpcdates$Global_active_power)
subMetering1 <- as.numeric(hpcdates$Sub_metering_1)
subMetering2 <- as.numeric(hpcdates$Sub_metering_2)
subMetering3 <- as.numeric(hpcdates$Sub_metering_3)

png("plot3.png")
plot(datetime, subMetering1, type="l", ylab="Energy Submetering", xlab ="")
lines(datetime, subMetering2, type="l", col = "red")
lines(datetime, subMetering3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"))
dev.off()