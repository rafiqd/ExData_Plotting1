

make_plot2 <- function(dat){
    
    dat$Datetime <- as.POSIXct(paste(dat$Date, dat$Time), format="%Y-%m-%d %H:%M:%S")
    plot(dat$Datetime, 
         dat$Global_active_power, 
         type = c("c"),
         xlab = "",
         ylab = "Global Active Power (kilowatts)")
    lines(dat$Datetime, dat$Global_active_power)
}

plot2 <- function(){
    filename <- "household_power_consumption.txt"
    dat <- read.table(filename, 
                      sep = ";", 
                      header = TRUE,
                      na.strings = c("?"),
                      stringsAsFactors = FALSE)
    dat <- dat[which(dat$Date == "2/2/2007" | dat$Date == "1/2/2007"),]
    dat$Date <-  as.Date(new_dat$Date, "%d/%m/%Y")
    par(mfrow = c(1,1))
    png(filename = "plot2.png")
    make_plot2(dat)
    dev.off()
}