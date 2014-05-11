data <- read.table("./exdata-data-household_power_consumption/household_power_consumption.txt", sep= ";", header = TRUE, na.strings = "?") 
nrow(data)  ## check number of lines
data[, 1] <- as.Date(data[, 1], "%d/%m/%Y")
data2 <- data[data[, 1] =="2007-02-01" | data[, 1] =="2007-02-02", ]
## before we print graph we want to see the result
hist(data2[, 3], col = "red", main = "Global Active Power", xlab ="Global Active Power (kilowatts)")
##print
png("Plot1.png", width=480, height = 480)
hist(data2[, 3], col = "red", main = "Global Active Power", xlab ="Global Active Power (kilowatts)")
dev.off()



