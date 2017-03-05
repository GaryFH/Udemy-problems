##Create global varible "ouput" with value of 0
##I could just say assign<-0 but for practice I will do as follows
assign("output",0)

##Create new environment - myEnv with variable ss of 0 value
myenv<-new.env()
assign("ss",0,envir = myenv)

##Make function sumofsquares that takes two elements squared and added together
##assign the answer to SS

sumofsquares<-function(a,b){
        a^2+b^2->c
        assign("ss",c,envir = myenv)
        print (get("ss",envir = myenv))
}

##Change value of the global character Output from inside function

sumofsquares<-function(a,b){
        a^2+b^2->c
        assign("ss",c,envir = myenv)
        print (get("ss",envir = myenv))
        output<<-"I love R"
        print(output)
}


##new stuff about for loops vrs apply family

m1<-matrix(sample(1:1000,20),ncol=2)  ##could be m1<-matrix(sample(1:1000,20),10,2)
m<-data.frame(m1)
mv2<-numeric(nrow(m1))##creats a vector with "i" elements that each mv value (total of) can be put in
system.time({
        for(i in 1:nrow(m)){
                
                mv<-min(m[i,])
                mv2[i]<-mv
        }
})


##Try apply
m1<-matrix(sample(1:1000,10),ncol=2)  ##could be m1<-matrix(sample(1:1000,20),10,2)
m<-data.frame(m1)

apply(m,1,FUN=max)

##new problem
m2<-matrix(sample(1:1000,100),nrow=10)
df<-data.frame(m2)
apply(df,2,FUN=max)

