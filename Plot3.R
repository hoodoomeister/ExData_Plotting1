data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", sep= ";", header = TRUE, na.strings = "?") 
nrow(data)  ## check number of lines
data[, 1] <- as.Date(data[, 1], "%d/%m/%Y")
data2 <- data[data[, 1] =="2007-02-01" | data[, 1] =="2007-02-02", ]
## before we print graph we want to see the result
yrange <- range(data2[ , 7])
plot(data2[ ,7], type="l", axes = F, ylab = "Energy sub metering", col = "black", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,8], type="l", axes = F, ylab = "Energy sub metering", col = "red", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,9], type="l", axes = F, ylab = "Energy sub metering", col = "blue", ylim = yrange, xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty =1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
box(lty = "solid", col = 'black')
##print
png("Plot3.png", width=480, height = 480)
yrange <- range(data2[ , 7])
plot(data2[ ,7], type="l", axes = F, ylab = "Energy sub metering", col = "black", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,8], type="l", axes = F, ylab = "Energy sub metering", col = "red", ylim = yrange, xlab= "")
par(new=T)
plot(data2[ ,9], type="l", axes = F, ylab = "Energy sub metering", col = "blue", ylim = yrange, xlab= "")
axis(side = 2)
axis(side=1, at = c(0, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", lty =1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
box(lty = "solid", col = 'black')
dev.off()





