# Import Data
d <- read.table("data/household_power_consumption.txt", header = TRUE, sep = ";")

d$Date <- as.Date(d$Date,  "%d/%m/%Y")

d2 <- subset(d, Date <= "2007-02-02" & Date >="2007-02-01")

png(file = "plot1.png", width = 480, height = 480)
hist(as.numeric(d2$Global_active_power), col = "red", main = "Global Active Power")
dev.off()
