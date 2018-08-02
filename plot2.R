## This function reads data from the household_power_consumption file.
## A subset of the data for 01-Feb and 02-Feb-2007 is used to generate the plots.
## The function plots a line graph of global active power.

plot2 <- function() {
        
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
        
        
        ## Plot chart 2 to png file
        png("plot2.png", width=480, height=480)
        par(mfrow=c(1,1))
        with(rawdata, plot(DateTime, Global_active_power, type="l", xlab="Day", ylab="Global Active Power (kilowatts)"))
        dev.off()
        
        
}