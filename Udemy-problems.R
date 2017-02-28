## Step 1 - create a dataframe with 100 rows and 5 columns,
##all objects to be random numbers between 1 and 10

a<-round(runif(500,1,10))
df<-matrix(a,100,5)
df1<-as.data.frame(df)

##Randomly put 5 NA's in each column


for(rnumber in c(1:ncol(df1))){
        a2<-sample(1:100,5)
        df1[a2,rnumber]<-NA
}
