pConsumption <- read.table("exdata_data_household_power_consumption/household_power_consumption.txt", comment.char="", quote='\"', na.strings="?", check.names=FALSE, 
                           header=TRUE, dec=".", sep=";")
pConsumption$Date <- as.Date(pConsumption$Date, format="%d/%m/%Y")
pCByDate <- subset(pConsumption, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
gAPower <- as.numeric(pCByDate$Global_active_power) 
png("plot1.png", width=500, height=500) 
hist(gAPower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off() 
