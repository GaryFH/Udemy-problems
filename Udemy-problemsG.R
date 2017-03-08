


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