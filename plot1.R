

make_plot1 <- function(dat){
    hist(dat$Global_active_power, 
         col = "red",
         ylab = "Frequency",
         xlab = "Global Active Power (kilowatts)",
         main = "Global Active Power")
}


plot1 <- function(){
    filename <- "household_power_consumption.txt"
    dat <- read.table(filename, 
                      sep = ";", 
                      header = TRUE,
                      na.strings = c("?"),
                      stringsAsFactors = FALSE)
    dat <- dat[which(dat$Date == "2/2/2007" | dat$Date == "1/2/2007"),]
    dat$Date <-  as.Date(new_dat$Date, "%d/%m/%Y")
    par(mfrow = c(1,1))
    png(filename = "plot1.png")
    make_plot1(dat)
    dev.off()
}

