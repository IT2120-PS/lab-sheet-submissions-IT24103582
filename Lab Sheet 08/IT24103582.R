setwd("E:\\Tharindu\\SLIIT\\Y2 S1\\PaS - IT2120\\Lab\\Lab 08\\Lab 08-20250929")

data <- read.table("Exercise - LaptopsWeights.txt", header=TRUE)
fix(data)
attach(data)

popmn<-mean(Weight.kg.)
popvar<-var(Weight.kg.)



samples<-c()
n<-c()

for(i in 1:25){
  s<-sample(Weight.kg., 6, replace=TRUE)
  samples<-cbind(samples,s)
  n<-c(n,paste('S',i))
}

colnames(samples)=n

s.means <- apply(samples,2,mean)
s.sd<-apply(samples,2,sd)

samplemean <- mean(s.means)
samplesd<- sd(s.means)

truemn=popmn/6

popsd<-sd(Weight.kg.)
truesd=popsd/6
