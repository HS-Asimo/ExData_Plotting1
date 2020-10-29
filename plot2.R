data <- read.delim("~/household_power_consumption.txt",
                   sep = ";", header = T)

data_new <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007",]
library("dplyr")


###### plot 2 ######
data_new <- mutate(data_new, sequence = 1:2880)
plot(data_new$sequence, as.numeric(data_new$Global_active_power), plot_type <- "l",
     xaxt='n', ylab = "Global Active Power (kilowatts)",
     xlab = "")

axis(side = 1, at = c(1, 1440, 2880), labels = c("Thu", "Fri", "Sat"))

