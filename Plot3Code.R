TimeVect <- 1:2880
Sub1 <- as.numeric(as.character(Range_Power$Sub_metering_1))
Sub2 <- as.numeric(as.character(Range_Power$Sub_metering_2))
Sub3 <- as.numeric(as.character(Range_Power$Sub_metering_3))

png("C:/Users/Admin/Desktop/Data Science/RProgrammingOctober2015//Plot3.png")

plot(TimeVect, Sub1, type = "l", axes = FALSE, xlab = "", ylab = "Energy Sub Metering")
lines(Sub2, col = "red")
lines(Sub3, col = "blue")
axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
axis(2, at = c(0,10,20,30), lab = c(0,10,20,30))
box()
legend("topright", c("Sub_Meter1", "Sub_Meter2", "Sub_Meter3"), cex = 0.8, lty = c(1,1,1), col = c("black", "red", "blue"))

dev.off()