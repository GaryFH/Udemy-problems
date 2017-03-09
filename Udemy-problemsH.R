##Final Udemy R project
        ##Get data and assign it to dataframe c1
        ##c1<-read.csv("http://rstatistics.net/wp-content/uploads/2015/08/CustomerPartSales.csv")


##Task 1: Loyal Customers (order from most # of orders to least # of order)

## just for fun length(unique(c1$CUSTNAME))  head(c1$CUSTNAME,30)


tbl1<-table(c1$CUSTNAME)
df1<-as.data.frame(tbl1)
df2<-df1[order(-df1[2]),]  ##or   df2<-df1[order(-df1$Freq),]

## just for fun - sum(df2[,2])

##sorts rev column from high to low
df3<-as.data.frame(c1$REVENUE)
##   This is not needed  df4<-df3[order(-df3),]


##Sort customers by most total revenue
rv1<-aggregate(REVENUE~CUSTNAME,sum,data = c1)
rv2<-rv1[order(-rv1[2]),]  ## or rv2<-rv1[order(-rv1$REVENUE),]

##Task 3 - Most revenue at part level

rv3<-aggregate(REVENUE~PARTNUM,sum,data = c1)
rv4<-rv3[order(-rv3$REVENUE),]  ##or  rv4<-rv3[order(-rv3[2]),]

##Task 4 find top 50 parts that have highest margin (exclude parts with total revenue less than $100,000)

rv5<-aggregate(MARGIN~PARTNUM,FUN = sum,data = c1)
rv6<-merge(rv3,rv5,by="PARTNUM")
rv6$MARGIN_PERC<-rv6$MARGIN/rv6$REVENUE
rv6<-rv6[order(-rv6[4]),]
##remove for low revenue "<$100,000"
rv7<-rv6[rv6[2]>100000,]


##which parts are losing money
rv3<-aggregate(REVENUE~PARTNUM,sum,data = c1)
rv5<-aggregate(MARGIN~PARTNUM,FUN = sum,data = c1)
rv6<-merge(rv3,rv5,by="PARTNUM")
rv8<-rv6[rv6[3]<=0,]
rv8<-rv8[order(rv8[3]),]



##Start by getting data and making sure everything will work as wanted

##c1<-read.csv("http://rstatistics.net/wp-content/uploads/2015/08/CustomerPartSales.csv")
##options(scipen = 999)
##options(stringsAsFactors = F)
##Run Str(c1) to see if all variables are of usable type
##c1$PARTNUM<-as.character(c1$PARTNUM) - (don't want partnumber as integer of numeric)


##Part 1 repeat - cust w/most orders 
        ##(note that $CUSTNAME needs a frequecy to work - thus making it a table)

                tcust<-table(c1$CUSTNAME)
                dfcust<-as.data.frame(tcust)
                dfcust1<-dfcust[order(-dfcust$Freq),]
                
##Part 2 repeat - cust w/highest revenue
                
                
                rev<-aggregate(REVENUE~CUSTNAME,sum,data = c1)
                rev2<-rev[order(-rev$REVENUE),]

                
## Part 3 repeat - parts that bring in most money
                rvpart<-aggregate(REVENUE~PARTNUM,sum,data = c1)
                rvpart2<-rvpart[order(-rvpart$REVENUE),]
                
                
##Part 4 - parts with greatest % margin
                
                
                mar1<-aggregate(MARGIN~PARTNUM,sum,data=c1)
                mar2<-aggregate(REVENUE~PARTNUM,sum,data=c1)
                mar3<-merge(mar2,mar1,by="PARTNUM")
                
                mar3$MARGIN_PERC<-mar3$MARGIN/mar3$REVENUE
                mar4<-mar3[order(-mar3$MARGIN_PERC),]
                
        ## Exclude parts with less than $100,000 revenue
                
                mar5<-mar4[mar4$REVENUE>=100000,]
                
        ##include only those that make less than 8%
                
                mar6<-mar4[mar4$MARGIN_PERC<.08,]
        
                
        ##show customers that lose money
                
                lm<-aggregate(MARGIN~CUSTNAME,sum,data = c1)
                
                lose_money<-lm[lm$MARGIN <=0,]
                
                
                
                        
                        
                        
                
                
                
                
                
                
                
                
                