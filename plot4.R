## This function reads data from the household_power_consumption file.
## A subset of the data for 01-Feb and 02-Feb-2007 is used to generate the plots.
## The function plots four charts showing global active power, voltage, energy sub-metering
## and global reactive power for the period.

plot4 <- function() {
        
        ## Initial settings
        dirDest <- "./data/UCIpower"
        fileDest <- "./data/UCIpower/household_power_consumption.txt"
        
        ## Read raw data
        rawdata <- read.table(fileDest, sep = ";", header = TRUE, na.strings = "?", stringsAsFactors = FALSE)
        
        ## Tidy dates and times
        rawdata$Date <- as.Date(rawdata$Date, format="%d/%m/%Y")
        rawdata$Time <- format(rawdata$Time, format="%H:%M:%S")

        ## Subset data for 01-Feb-2007 to 02-Feb-2007
        rawdata <- subset(rawdata, Date == "2007-02-01" | Date == "2007-02-02")        
        
        ## Create column for DateTime
        DateTime <- strptime(paste(rawdata$Date, rawdata$Time, sep=" "), "%Y-%m-%d %H:%M:%S")
        rawdata <- cbind(DateTime, rawdata)
        
        
        ## Plot chart 4 to png file
        png("plot4.png", width=480, height=480)
        par(mfrow=c(2,2))
        
        ## Plot4.1
        with(rawdata, plot(DateTime, Global_active_power, type="l", xlab="", ylab="Global Active Power"))
        
        ## Plot 4.2
        with(rawdata, plot(DateTime, Voltage, type = "l", xlab="datetime", ylab="Voltage"))
        
        ## Plot 4.3
        with(rawdata, plot(DateTime, Sub_metering_1, type="l", xlab="", ylab="Energy sub metering"))
        with(rawdata,lines(DateTime, Sub_metering_2,type="l", col= "red"))
        with(rawdata,lines(DateTime, Sub_metering_3,type="l", col= "blue"))
        legend(c("topright"), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty= 1, lwd=2, col = c("black", "red", "blue"), bty = "n")
        
        ## Plot 4.4
        with(rawdata, plot(DateTime, Global_reactive_power, type="l", xlab="datetime", ylab="Global_reactive_power"))        
        dev.off()        
        
}