## plot3.R
##
## Getting and Cleaning Data
## Course Project 1
## 
## Last Updated: 1/9/2016


######################################################################
##  Preliminaries
######################################################################

if(!file.exists("./data")){
        dir.create("./data")
}
fileURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
destFile = "./data/electric_power_consumption.zip"
if(!file.exists(destfile)){
        download.file(fileURL, destFile, extra='-L',mode='wb')
}
unzip(destFile, exdir = "./data")

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

howMuchRAM(9, 2075259) 
memory.size()

dataFile <- "./data/household_power_consumption.txt"
df <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
df <- df[df$Date %in% c("1/2/2007","2/2/2007") ,]

df$Date <- as.Date(df$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(df$Date), df$Time)
df$datetime <- as.POSIXct(datetime)

with(df, {
        plot(Sub_metering_1~datetime, 
             type = "l", 
             xlab = "", 
             ylab = "Energy sub metering",)
        lines(Sub_metering_2~datetime, col = "Red")
        lines(Sub_metering_3~datetime, col = "Blue")
})
legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2,
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()     
