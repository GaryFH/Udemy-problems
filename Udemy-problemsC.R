## Second set of tasks - 
        ##Challege 1 - using library(datasets)USArrests 
        ##Find States with lowest 25% murder rate

dm<- USArrests[order(USArrests[,1]),]
dm[c(1:(nrow(dm)*0.25)),]


        ##Challege 2 - assault>200 or rape>20

dm2<-which(USArrests[,2]>200|USArrests[,4]>20)
USArrests[dm2,]

        ##Challenge 3 - Murder>10 and Rape>15

dm3<-which(USArrests[,1]>10,USArrests[,4]>15)
USArrests[dm3,]

        ##Challenge 4 - order descending murder

dm4<-rev(order(USArrests[,1]))
USArrests[dm4,]
