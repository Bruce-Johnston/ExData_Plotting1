##This file is meant to be run first.
##It goes almost without saying that one must substitute one's own file names and directories
##as appropriate.

Power_Data <- read.table("C:/Users/Admin/Desktop/household_power_consumption.txt", sep = ";", header = TRUE)
Range_Power <- subset(Power_Data, Power_Data$Date == "1/2/2007" | 
                        Power_Data$Date == "2/2/2007")

ActivePower <- as.numeric(as.character(Range_Power$Global_active_power))

png(filename = "C:/Users/Admin/Desktop/Data Science/RProgrammingOctober2015/plot1.png")

hist(ActivePower, breaks = 14, axes = FALSE, 
     ylab = "Frequency", xlab = "Global Active Power (kilowatts)", 
     col = "red", main = "Global Active Power")
axis(1, at = c(0,2,4,6), lab = c(0,2,4,6))
axis(2, at = c(0,200,400,600,800,1000,1200), lab = c(0,200,400,600,800,1000,1200))

dev.off()
