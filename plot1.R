#load data
UCI = read.csv('UCIdata.csv', header = T, stringsAsFactors = F)

#as.date
UCI$Date = as.Date(UCI$Date, "%d/%m/%Y")

#obtain only required data
UCI2 = subset(UCI, Date < "2007-02-03" & Date > "2007-01-31")
class(UCI2$Global_active_power)
UCI2$Global_active_power = as.numeric(UCI2$Global_active_power)

#creat first plot
png(filename = "plot1.png", width = 480, height = 480)
hist(UCI2$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = 'red')
dev.off()


##I have finals going on at the moment, so no time to figure out how to do the other 3
##just trying to get a few points for the assignment