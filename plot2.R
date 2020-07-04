data_full <- read.csv("~/Data Science/household_power_consumption.txt", sep=";", quote="'", stringsAsFactors=FALSE)


data1 <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
data1$Date <- as.Date(data1$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(data1$Date), data1$Time)
data1$Datetime <- as.POSIXct(datetime)

## Plot 2
with(data1, {
  plot(Global_active_power~Datetime, type="l",
     ylab="Global Active Power (kilowatts)", xlab="")
  })


     
png("plot2.png", width=480, height=480)
dev.off()
