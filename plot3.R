make_plot3 <- function(dat){
    dat$Datetime <- as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%m-%d %H:%M:%S")
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
                   "blue"))
}

plot3 <- function(){
    filename <- "household_power_consumption.txt"
    dat <- read.table(filename, 
                      sep = ";", 
                      header = TRUE,
                      na.strings = c("?"),
                      stringsAsFactors = FALSE)
    dat <- dat[which(dat$Date == "2/2/2007" | dat$Date == "1/2/2007"),]
    dat$Date <-  as.Date(new_dat$Date, "%d/%m/%Y")
    png(filename = "plot3.png")
    make_plot3(dat)
    dev.off()
}