d <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";")

d$Date <- as.Date(d$Date,  "%d/%m/%Y")

d2 <- subset(d, Date <= "2007-02-02" & Date >="2007-02-01")

x <- (as.POSIXct(paste0(d2$Date, d2$Time)))
y <- d2$Global_active_power

png(file = "plot2.png", width = 480, height = 480)
plot(x, y, type = "S", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
