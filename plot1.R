plot1 <- function(){
      ## Read the data.
      data <- read.csv("ExData_Plotting1/household_power_consumption.txt", header = TRUE, sep=";", na.strings = "?")
      ## Select date 01.02.2007 - 02.02.2007
      data <- data[data$Date == '1/2/2007' | data$Date == '2/2/2007',]
      ## Plot and save
      hist(data$Global_active_power, col = 'Red', main = 'Global Active Power', xlab = 'Global Active Power (kilowatts)')
      dev.copy(png, file = "ExData_Plotting1/plot1.png", width = 480, height = 480)
      dev.off()
}