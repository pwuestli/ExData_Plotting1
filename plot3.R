plot3 <- function(){
      ## Read the data.
      data <- read.csv("ExData_Plotting1/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
      ## Select date 01.02.2007 - 02.02.2007
      data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',]
      ## Add datetime column
      data$datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
      ## Plot and save
      dev.copy(png, file = "ExData_Plotting1/plot3.png", width = 480, height = 480)
      plot( x = data$datetime,  y = data$Sub_metering_1, type = 'l', main = '', xlab = '', ylab = 'Energy sub metering')
      lines(x = data$datetime,  y = data$Sub_metering_2, col = 'Red')
      lines(x = data$datetime,  y = data$Sub_metering_3, col = 'Blue')
      legend(x = "topright",  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c('Black', 'Red', 'Blue'), lty = 1)
      dev.off()
}