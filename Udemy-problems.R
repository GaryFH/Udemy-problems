## Part 1 - create a dataframe with 100 rows and 5 columns,
##all objects to be random numbers between 1 and 10

a<-round(runif(500,1,10))
df<-matrix(a,100,5)
df1<-as.data.frame(df)

## Part 2 - Randomly put 5 NA's in each column


for(rnumber in c(1:ncol(df1))){
        a2<-sample(1:100,5)
        df1[a2,rnumber]<-NA
}

##Part 3 - find the rows that have NA/s in column 1
##First try

d1<-is.na(df1[,1])
d2<-which(d1&T)

##second try
which(is.na(df1$V1))

## Part 4 - find row numbers if any value is NA

for(i in c(1:100)){
        
d3<-is.na(df1[i,])
d4<-any(d3==t)
print(d1)}
