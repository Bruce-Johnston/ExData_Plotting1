png(filename = "C:/Users/Admin/Desktop/Data Science/RProgrammingOct2015/plot4.png")

par(mfrow = c(2,2))

 plot(TimeVect, ActivePower, axes = FALSE, type = "l", ylab = "Global Active Power", xlab = "")
 axis(2, at = c(0, 2, 4, 6), lab = c(0,2,4,6))
 axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
 box()
 
 plot(TimeVect, Voltage, axes = FALSE, type = "l", ylab = "Voltage", xlab = "datetime")
 axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
 axis(2, at = c(234,236,238,240, 242, 244, 246))
 box()
 
 plot(TimeVect, Sub1, type = "l", axes = FALSE, xlab = "", ylab = "Energy Sub Metering")
 lines(Sub2, col = "red")
 lines(Sub3, col = "blue")
 axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
 axis(2, at = c(0,10,20,30), lab = c(0,10,20,30))
 box()
 legend("topright", c("Sub_Meter1", "Sub_Meter2", "Sub_Meter3"), cex = 0.8, lty = c(1,1,1), col = c("black", "red", "blue"))
 
 plot(TimeVect, React, axes = FALSE, type = "l", ylab = "Global reactive power", xlab = "datetime")
 axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
 axis(2, at = c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5), lab = c(0.0, 0.1, 0.2, 0.3, 0.4, 0.5))
 box()
 
 dev.off()
 
 par(mfrow = c(1,1))