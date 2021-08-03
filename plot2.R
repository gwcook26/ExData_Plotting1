sourcefile <- "household_power_consumption.txt"
hpc <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

hpcdates <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

datetime <- strptime(paste(hpcdates$Date, hpcdates$Time, sep = " "), "%d/%m/%Y %H:%M:%S")
agp <- as.numeric(hpcdates$Global_active_power)

png("plot2.png")
plot(datetime,agp, type="l", xlab="",ylab="Global Active Power (kilowatts)")
dev.off()