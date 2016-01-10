## plot3.R
##
## Getting and Cleaning Data
## Course Project 1
## 
## Last Updated: 1/9/2016


######################################################################
##  Preliminaries
######################################################################

# Check for data directory and create it if necessary
if(!file.exists("./data")){
        dir.create("./data")
}

fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destFile = "./data/electric_power_consumption.zip"

# Check if data file exist and download if necessary
if(!file.exists(destFile)){
        download.file(fileURL, destFile, extra='-L',mode='wb')
}

# unzip the data
unzip(destFile, exdir = "./data")

# function for estimating RAM
howMuchRAM <-function(ncol, nrow, cushion=3){
        #40 bytes per col
        colBytes <- ncol*40
        
        #8 bytes per cell
        cellBytes <- ncol*nrow*8
        
        #object.size
        object.size <- colBytes + cellBytes
        
        #RAM
        RAM <- object.size*cushion
        cat("Your dataset will have up to", format(object.size*9.53674e-7, digits=1), "MB and you will probably need", format(RAM*9.31323e-10,digits=1), "GB of RAM to deal with it.")
        result <- list(object.size = object.size, RAM = RAM, ncol=ncol, nrow=nrow, cushion=cushion)
}

# Check how much RAM may be needed
howMuchRAM(9, 2075259) 

# Check how much RAM is available
memory.size()

#save original graphics (par) settings
orig_par <- par()

######################################################################
##  Read in Data
######################################################################

# read data into data.frame df
dataFile <- "./data/household_power_consumption.txt"
df <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

# format date and datetime
df$Date <- as.Date(df$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df$Date), df$Time)
df$datetime <- as.POSIXct(datetime)

# Open PNG device; create 'plot3.png' in the working directory
output = "plot3.png"
png(filename = output, height = 480, width = 480)


with(df, {
        plot(datetime, 
             Sub_metering_1,
             xlab = "", 
             ylab = "Energy sub metering",
             type = "n")
        lines(datetime, 
              Sub_metering_1,
              col = "black")
        lines(datetime, 
              Sub_metering_2,
              col = "red")
        lines(datetime, 
              Sub_metering_3,
              col = "blue")
})
legend("topright", 
       legend=c("Sub_metering_1", 
                "Sub_metering_2", 
                "Sub_metering_3"),
       col = c("black", "red", "blue"), 
       lty = c(1, 1, 1),
       lwd = c(2, 2, 2),
       cex = 1.0
       )

# close the PNG file
dev.off()     

# Reset graphic (par) settings to their original values
suppressWarnings(par(orig_par))
