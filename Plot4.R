data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", sep= ";", header = TRUE, na.strings = "?") 
nrow(data)  ## check number of lines
data[, 1] <- as.Date(data[, 1], "%d/%m/%Y")
data2 <- data[data[, 1] =="2007-02-01" | data[, 1] =="2007-02-02", ]
## before we print graph we want to see the result
par(mfcol = c(2, 2))
## first graph
plot(data2[ ,3], type="l", axes = F, ylab = "Global Active Power (kilowatts)", xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
## second graph
yrange <- range(data2[ , 7])
plot(data2[ ,7], type="l", axes = F, ylab = "Energy sub metering", col = "black", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,8], type="l", axes = F, ylab = "Energy sub metering", col = "red", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,9], type="l", axes = F, ylab = "Energy sub metering", col = "blue", ylim = yrange, xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty =1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
box(lty = "solid", col = 'black')
##third graph
plot(data2[ ,5], type="l", axes = F, ylab = "Voltage", xlab= "datetime")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
##fourth graph
plot(data2[ ,4], type="l", axes = F, ylab = "Global_reactive_power", xlab= "datetime")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')


##print
png("Plot4.png", width=480, height = 480)
par(mfcol = c(2, 2))
## first graph
plot(data2[ ,3], type="l", axes = F, ylab = "Global Active Power (kilowatts)", xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
## second graph
yrange <- range(data2[ , 7])
plot(data2[ ,7], type="l", axes = F, ylab = "Energy sub metering", col = "black", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,8], type="l", axes = F, ylab = "Energy sub metering", col = "red", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,9], type="l", axes = F, ylab = "Energy sub metering", col = "blue", ylim = yrange, xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty =1, bty = "n", col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
box(lty = "solid", col = 'black')
##third graph
plot(data2[ ,5], type="l", axes = F, ylab = "Voltage", xlab= "datetime")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
##fourth graph
plot(data2[ ,4], type="l", axes = F, ylab = "Global_reactive_power", xlab= "datetime")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
box(lty = "solid", col = 'black')
dev.off()