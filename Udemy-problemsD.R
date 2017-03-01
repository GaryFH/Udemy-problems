##using USArrests from dataset library

binc3<-cut(USArrests[,3],pretty(USArrests[,3]))
binc4<-cut(USArrests[,4],pretty(USArrests[,4]))
tb<-table(binc3,binc4)
tbdf<-as.data.frame.matrix(tb)


t1<-read.table("http://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data",stringsAsFactors = F,header = F,sep=",")
