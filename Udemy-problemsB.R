##step 1 - long way
a<-round(runif(100,1,10))
b<-round(runif(100,1,10))
c<-round(runif(100,1,10))
d<-round(runif(100,1,10))
e<-round(runif(100,1,10))

df<-cbind(a,b,c,d,e)
df1<-as.data.frame(df)

##step 1 - fast way

am<-matrix(round(runif(500,1,10)),100,5)
am1<-as.data.frame(am)

##step 2 - insert 5 NA's in each column


for(i in c(1:5)){
for(b in c(1:5)){
        a1<-round(runif(1,1,100))
        df1[a1,i]<-NA
}}

##or
for (i in c(1:5)){
     df1[sample(1:100,5),i]<-NA
}

##Step 3 - get row numbers for NA's in column 1

which(is.na(df1[,1]))

##Step 4 - get row numbers with NA's in any column


for(i in c(1:5)){
hh<- which(is.na(df1[,i]))
print(hh)}

##step 5 - get last ten rows of the 3rd & 5th columns

df3<-df1[c(91:100),c(3,5)]

##or

tail(df1,10)[,c(3,5)]

##step 6   sort, in df1, column 1 in ascending order
                ##   and column 2 in descending order


asc<-sort(df1[,1])
dsc<-rev(sort(df1[,2]))
print(asc)
print(dsc)

## or  (note that second part of each than the instructor included is
        ##not needed and is not included in the calculation
        ## because only one column can be ordered at a time)

df1[order(df1[,1],-df1[,2]),]

## or

df1[order(df1$a,-df1$b)]

