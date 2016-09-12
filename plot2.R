pConsumption <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", comment.char="", quote='\"', na.strings="?", check.names=FALSE, 
                            header=TRUE, dec=".", sep=";")
pConsumption$Date <- as.Date(pConsumption$Date, format="%d/%m/%Y")
pCByDate <- subset(pConsumption, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
dt <- strptime(paste(pCByDate$Date, pCByDate$Time, sep=" "), "%Y-%m-%d %H:%M:%S")  
gAPower <- as.numeric(pCByDate$Global_active_power) 
png("plot2.png", width=500, height=500) 
plot(dt, gAPower, type="l", xlab="", ylab="Global Active Power (kilowatts)") 
dev.off() 
