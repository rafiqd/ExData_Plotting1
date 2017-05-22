
make_plot4 <- function(dat){
    par(mfrow = c(2,2))
    dat$Datetime <- as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%m-%d %H:%M:%S")
    
    # top left
    plot(dat$Datetime, 
         dat$Global_active_power, 
         type = c("c"),
         xlab = "",
         ylab = "Global Active Power (kilowatts)")
    lines(dat$Datetime, dat$Global_active_power)
    
    # top right
    plot(dat$Datetime,
         dat$Voltage,
         type = "c",
         xlab = "datetime",
         ylab = "Voltage")
    lines(dat$Datetime,
          dat$Voltage)
    
    # bottom left
    plot(dat$Datetime,
         dat$Sub_metering_1,
         type = "n",
         xlab = "",
         ylab = "Energy sub metering")
    
    lines(dat$Datetime, 
          dat$Sub_metering_1)
    
    lines(dat$Datetime,
          dat$Sub_metering_2,
          col = "Red")
    
    lines(dat$Datetime,
          dat$Sub_metering_3,
          col = "Blue")
    
    legend("topright",
           lty = 1,
           legend=c("Sub_metering_1", 
                    "Sub_metering_2", 
                    "Sub_metering_3"),
           col = c("black", 
                   "red", 
                   "blue"), 
           bty = "n")
    
    # bottom right 
    plot(dat$Datetime,
         dat$Global_reactive_power,
         type = "c",
         xlab = "datetime",
         ylab = "Global_reactive_power")
    lines(dat$Datetime,
          dat$Global_reactive_power)
}



plot4 <- function(){
    filename <- "household_power_consumption.txt"
    dat <- read.table(filename, 
                      sep = ";", 
                      header = TRUE,
                      na.strings = c("?"),
                      stringsAsFactors = FALSE)
    dat <- dat[which(dat$Date == "2/2/2007" | dat$Date == "1/2/2007"),]
    dat$Date <-  as.Date(new_dat$Date, "%d/%m/%Y")
    png(filename = "plot4.png")
    make_plot4(dat)
    dev.off()
}