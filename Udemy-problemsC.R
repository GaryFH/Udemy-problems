## Second set of tasks - 
        ##Challege 1 - using library(datasets)USArrests 
        ##Find States with lowest 25% murder rate

dm<- USArrests[order(USArrests[,1]),]
dm[c(1:(nrow(dm)*0.25)),]


        ##Challege 2 - assault>200 or rape>20

dm2<-which(USArrests[,2]>200|USArrests[,4]>20)
USArrests[dm2,]

