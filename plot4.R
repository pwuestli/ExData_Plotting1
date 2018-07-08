plot4 <- function(){
      ## Read the data.
      data <- read.csv("ExData_Plotting1/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
      ## Select date 01.02.2007 - 02.02.2007
      data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',]
      ## Add datetime column
      data$datetime <- strptime(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S")
      ## plot 2 by 2
      par(mfrow = c(2,2))
      ## first plot, global active power
      plot( x = data$datetime,  y = data$Global_active_power, type = 'l', main = '', xlab = '', ylab = 'Global Active Power')
      ## second plot, voltage
      plot( x = data$datetime,  y = data$Voltage, type = 'l', main = '', xlab = 'datetime', ylab = 'Voltage')
      ## Third plot, sub metering
      plot( x = data$datetime,  y = data$Sub_metering_1, type = 'l', main = '', xlab = '', ylab = 'Energy sub metering')
      lines(x = data$datetime,  y = data$Sub_metering_2, col = 'Red')
      lines(x = data$datetime,  y = data$Sub_metering_3, col = 'Blue')
      legend(x = "topright",  legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col = c('Black', 'Red', 'Blue'), lty = 1, bty = 'n', cex = 0.7)
      ## Fourth plot, gloabl reactive power
      plot( x = data$datetime,  y = data$Global_reactive_power, type = 'l', main = '', xlab = 'datetime', ylab = 'Global_reactive_power')
      
      ## save plot
      dev.copy(png, file = "ExData_Plotting1/plot4.png", width = 480, height = 480)
      dev.off()
}