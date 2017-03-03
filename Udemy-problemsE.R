##Splits "cars" dataset into training (80% of rows) and test (20% of rows)

tr1<-sample(1:nrow(cars),.8*nrow(cars),replace = F)


trd<-cars[tr1,]

testd<-cars[-tr1,]

##  Step 1 - create 10 digit random code
output<-NULL
for(i in 1:5){
a<-round(runif(1,1,26))
c<-LETTERS[a]
b<-round(runif(1,0,9))
d<-paste(b,c,sep = "",collapse = "")
output<-paste(output,d,sep = "",collapse = "")}
output

##Step 2 - create string of any length like (LOC1,LOC2....)
paste("LOC",c(1:i2),sep="")


##combine steps to e a string of LOC1-MMYY-10 character random code
        ##program (25 outputs)

for(i2 in 1:25){
output<-NULL
for(i in 1:5){
        a<-round(runif(1,1,26))
        c<-LETTERS[a]
        b<-round(runif(1,0,9))
        d<-paste(b,c,sep = "",collapse = "")
        output<-paste(output,d,sep = "")
}

##step 2 - create string of LOC1,  LOc2, ...
s2<-paste("LOC",i2,sep="")

##step 3
f<-paste(s2,"MMYY",output,sep = "-")
print(f)
}


##Alternative answer
##  Step 1 - create 10 digit random code
for(i2 in 1:25){
h<-c(LETTERS,0:9)
g<-sample(h,9,replace = F)
code<-paste(g,collapse = "")
##step 2 - create string of LOC1,  LOc2, ...
s2<-paste("LOC",i2,sep="")
##step 3
date<-paste(Sys.Date(),collapse = "")
f<-paste(s2,date,code,sep = " __ ")
print(f)}


