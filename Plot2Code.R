TimeVect <- 1:2880
ActivePower <- as.numeric(as.character(Range_Power$Global_active_power))

png(filename = "C:/Users/Admin/Desktop/Data Science/RProgrammingOctober2015//plot2.png")

plot(TimeVect, ActivePower, axes = FALSE, type = "l", ylab = "Global Active Power", xlab = "")
axis(2, at = c(0, 2, 4, 6), lab = c(0,2,4,6))
axis(1, at = c(1, 1439, 2879), lab = c("Fri", "Sat", "Sun"))
box()

dev.off()