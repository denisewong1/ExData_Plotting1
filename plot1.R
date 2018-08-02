## This function reads data from the household_power_consumption file.
## A subset of the data for 01-Feb and 02-Feb-2007 is used to generate the plots.
## The function plots a histogram of global active power.

plot1 <- function() {
        
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
        
        
        ## Plot chart 1 to png file
        png("plot1.png", width=480, height=480)
        par(mfrow=c(1,1))
        hist(rawdata$Global_active_power, col="red", border="black", main ="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency")
        dev.off()
        

}