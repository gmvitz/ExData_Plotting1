d <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";")

d$Date <- as.Date(d$Date,  "%d/%m/%Y")

d2 <- subset(d, Date <= "2007-02-02" & Date >="2007-02-01")

x <- (as.POSIXct(paste0(d2$Date, d2$Time)))
m1 <- d2$Sub_metering_1
m2 <- d2$Sub_metering_2
m3 <- d2$Sub_metering_3

png(file = "plot3.png", width = 480, height = 480)
plot(x, m1, type = "S", xlab = "", ylab = "Energy Sub Metering")
lines(x, m2, col = "red")
lines(x, m3, col = "blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)
dev.off()
