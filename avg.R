avg<- tapply(data$steps, data$interval, mean, na.rm=TRUE)
plot(names(avg), avg, xlab="5-min interval", type="l", ylab="Average no. of steps")
maxavg<- max(avg)
maxinterval<- as.numeric(names(avg)[which(avg==max(avg))])