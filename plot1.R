data <- read.delim("~/household_power_consumption.txt",
                   sep = ";", header = T)

data_new <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
library("dplyr")

###### plot 1 ######
hist(as.numeric(data_new$Global_active_power),
     col = "red", main = "Global Active Power",
     xlab = "Global Active Power (kilowatts)",
     ylab = "Frequency", ylim = c(0, 1200))