setwd("E:\\Tharindu\\SLIIT\\Y2 S1\\PaS - IT2120\\Lab\\Lab 05")
Delivery_Times = read.table("Exercise - Lab 05.txt",header=TRUE,sep=",")
Delivery_Times
fix(Delivery_Times)
attach(Delivery_Times)


names(Delivery_Times) <- c("X1")
attach(Delivery_Times)
hist(X1,main="Histogram for deliver times")
summary(X1)
histogram <- hist(X1,main="Histogram for deliver times",breaks=seq(20,70,length=9))
histogram

breaks <- histogram$breaks
freq   <- histogram$counts
mids   <- histogram$mids

class<-c()

for(i in 1: length(breaks)-1){
  class[i] <- paste0("{", breaks[i],",",breaks[i+1],"}")
}
class
cbind(classes = class,frequency = freq)
lines(mids,freq)

plot (mids,freq,type="o",
      main="freq polygon for no delivery time",
      ylab="X1", xlab="Delivery Time",
      ylim=c(0,max(freq)))

cum.freq <- cumsum(freq)
cum.freq

new <- c()

for(i in 1 : length(breaks)) {
  if(i==1){
    new[i] = 0
  }
  else{
    new[i] = cum.freq[i-1]
  }
}

new
plot(breaks,new,type="o",
     main="freq polygon for Delivery Time",
     ylabs="Cummulative Frequency", xlabs="Delivery Time",
     ylim=c(0,max(cum.freq)))










