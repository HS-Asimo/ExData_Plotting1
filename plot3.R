data <- read.delim("~/household_power_consumption.txt",
                   sep = ";", header = T)

data_new <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
library("dplyr")


###### plot 3 ######
plot(data_new$sequence, as.numeric(data_new$Sub_metering_1), plot_type <- "l",
     xaxt='n', ylab = "Energy sub metering",
     xlab = "")
points(data_new$sequence, as.numeric(data_new$Sub_metering_2), type = "l", col = "red")
points(data_new$sequence, as.numeric(data_new$Sub_metering_3), type = "l", col = "blue")

axis(side = 1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))
legend("topright", col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty = 1)
