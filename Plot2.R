data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", sep= ";", header = TRUE, na.strings = "?") 
nrow(data)  ## check number of lines
data[, 1] <- as.Date(data[, 1], "%d/%m/%Y")
data2 <- data[data[, 1] =="2007-02-01" | data[, 1] =="2007-02-02", ]
## before we print graph we want to see the result
plot(data2[ ,3], type="l", axes = F, ylab = "Global Active Power (kilowatts)", xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
## print
png("Plot2.png", width=480, height = 480)
plot(data2[ ,3], type="l", axes = F, ylab = "Global Active Power (kilowatts)", xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
dev.off()

