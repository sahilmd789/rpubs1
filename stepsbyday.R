#include<iostream.h>
#include<stdio.h>
if(!file.exists("activity.csv")){
  unzip("activity.zip")
}
data<- read.csv("activity.csv")
data$date<- as.Date(data$date)
stepsbyday<- tapply(data$steps, data$date, sum, na.rm=TRUE)
library(ggplot2)
qplot(stepsbyday, xlab="No. of Steps Taken Each Day", ylab="Total Frequency", binwidth=500)
medianbyday<- median(stepsbyday)
meanbyday<- mean(stepsbyday)