## Data Source
The data was originally sourced from ["Individual household electric power consumption Data Set"](https://archive.ics.uci.edu/ml/datasets/individual+household+electric+power+consumption).  

Research is credited to : Georges HÃ©brail (georges.hebrail '@' edf.fr), Senior Researcher, EDF R&D, Clamart, France 
Alice BÃ©rard, TELECOM ParisTech Master of Engineering Internship at EDF R&D, Clamart, France.



## Introduction
The database was built from the 2075259 measurements of electric power consumption in one household with a one-minute sampling rate over the period December 2006 and November 2010.  Different electrical quantities and some sub-metering values are available.



## Data and Variables
The dataset was extracted from a zipped file from UCI.  Analysis was performed on the file household_power_consumption.txt.  

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
1. Date: Date in format dd/mm/yyyy
2. Time: time in format hh:mm:ss
3. Global_active_power: household global minute-averaged active power (in kilowatt)
4. Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5. Voltage: minute-averaged voltage (in volt)
6. Global_intensity: household global minute-averaged current intensity (in ampere)
7. Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered).
8. Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9. Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

Dataset missing values are coded as ``?``.



## Processing steps
1. Reading files into data frames
2. Tidy date and time formats
3. Subset data for only dates 01-Feb-2007 to 02-Feb-2007
4. Add column for date and time merged
5. Write code to output plots to .png file.




