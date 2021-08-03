sourcefile <- "household_power_consumption.txt"
hpc <- read.table(sourcefile, header = TRUE, sep = ";", stringsAsFactors = FALSE, dec = ".")

hpcdates <- hpc[hpc$Date %in% c("1/2/2007","2/2/2007") ,]

gap <- as.numeric(hpcdates$Global_active_power)

png("plot1.png")
hist(gap, main ="Global Active Power", xlab = "Global Active Power (kilowatts", ylab = "Frequency", col = "red")
dev.off()