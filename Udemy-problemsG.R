


##hypotenuse if columns are two sides of 90deg triangle
x<-sample(1:1000,20)
ma1<-matrix(x,ncol=2)
df<-as.data.frame(ma1)


##This is for loop method
for(i in 1:nrow(df)){
hyp<-(df[i,1]^2+df[i,2]^2)^.5
print(hyp)
}


##This is apply function

x<-sample(1:1000,20)
ma1<-matrix(x,ncol=2)
df<-as.data.frame(ma1)

hyp<-function(x){(x[1]^2+x[2]^2)^.5
}
apply(df[,c(1:2)],1,FUN=hyp)

##get sum of squares for all rows in "Iris" data base 
##              (head(iris)
##              Sepal.Length Sepal.Width Petal.Length Petal.Width Species
##              1          5.1         3.5          1.4         0.2  setosa)

             
             
             ss<-function(x){(x[1]^2+x[2]^2+x[3]^2+x[4]^2)}
             apply(iris[,c(1:4)],1,FUN=ss)
             
##Just for fun with following list       
             x<-list(a=1:10,b=exp(-3:3),cc=c(TRUE,FALSE,FALSE,TRUE))
             
   ##Just for fun 
             lapply(x,min)
             ##or
             lapply(x,max)
             ##or
             f<-function(y){(sum(y)^2)/10+(2^(y^.1))}
             lapply(x,FUN=f)
             ##or
             f<-function(y){(sum(y)^2)/10+(2^(y^.1))}
             sapply(x,FUN=f)
             ##now use "iris" data frame instead of above x list
             
             sapply(iris[,c(1:4)],max)
             ##or
             f<-function(y){(sum(y)^.5)/10+(2^(y^.1))}
             sapply(iris[,c(1:4)],FUN=f)
             
             ##or
             f<-function(y){(sum(y)^.5)/10}
             sapply(iris[,c(1:4)],FUN=f)
             
             ##or
             sapply(iris[,c(1:4)],sum)
             
             ##or  Sepal.Length  Sepal.Width Petal.Length  Petal.Width 
                        ##7.9          4.4          6.9          2.5
             apply(iris[,c(1:4)],2,max)
             
             ##or which is the same as above but the output is forced to be numeric with only 1 object()
             vapply(iris[,c(1:4)],FUN=max,FUN.VALUE = numeric(1))
             
             ##mapply is different - two or more arguments
             rep(1:5,5:1)   ##output is "[1] 1 1 1 1 1 2 2 2 2 3 3 3 4 4 5"
             mapply(rep,1:5,5:1) ##same output but looks like a pyramid
             
             ##add more arguments to be applied to "rep"
             ##mapply(rep,1:5,5:1,MoreArgs = list()) 
             mapply(sum,1:10,10)
             ##
             seq(1,10,by=2)##this is OK
             seq(1:5,5:1)##this gives error
             mapply(seq,1:5,5:1)##this gives 5 sequences(1to5,2to4,3to3,4to2,5to1)
             ##add an argument
             mapply(seq,1:5,5:1, MoreArgs = list(length=7))
             
             
             
##Using "Iris" data set - 1) find min divided by max for all rows
             f1<-function(x1){(min(x1)/max(x1))}
             apply(iris[,c(1:4)],1,FUN=f1)
             
           ##for all the columns
             f1<-function(x1){(min(x1)/max(x1))}
             apply(iris[,c(1:4)],2,FUN=f1)
             ##or
             f1<-function(x1){(min(x1)/max(x1))}
             sapply(iris[,c(1:4)],FUN=f1)
             ##or
             f1<-function(x1){(min(x1)/max(x1))}
             apply(iris[,c(1:4)],1,FUN=f1)
             ##or
             f1<-function(x1){(min(x1)/max(x1))}
             lapply(iris[,c(1:4)],FUN=f1)
             ##or
             f1<-function(x1){(min(x1)/max(x1))}
             vapply(iris[,c(1:4)],FUN=f1,FUN.VALUE = numeric(1))
                     
        ##3  Using mapply find sum of columns
             
             mapply(sum,iris[,1],iris[,2],iris[,3],iris[,4])
             
             
          ##Generate the following using mapply
             ##      [,1] [,2] [,3] [,4] [,5]
             ##[1,]   1.0 21.0 41.0 61.0 81.0
             ##[2,]  20.8 32.8 44.8 56.8 68.8
             ##[3,]  40.6 44.6 48.6 52.6 56.6
             ##[4,]  60.4 56.4 52.4 48.4 44.4
             ##[5,]  80.2 68.2 56.2 44.2 32.2
             ##[6,] 100.0 80.0 60.0 40.0 20.0
             ##
             ##
             ##
             ##
             mapply(seq, seq(1,81,20),seq(100,20,-20), MoreArgs=list(length=6))
             
             