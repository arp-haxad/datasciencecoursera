#..................
# importing library
library(tidyr) # gather # spread # separate # unite
library(data.table)
comp <- c(1,1,1,2,2,2,3,3,3)
 yr <- c(1998,1999,2000,1998,1999,2000,1998,1999,2000)
 q1 <- runif(9, min = 0, max = 100)
 q2 <- runif(9, min = 0, max = 100)
 q3 <- runif(9, min = 0, max = 100)
 q4 <- runif(9, min = 0, max = 100)
 df <- data.frame(comp = comp,year = yr,Qtr1 = q1,Qtr2 = q2,Qtr3 = q3,Qtr4 = q4)
 print(df)
 df.gather <- gather(df,Quarter , revenue,Qtr1:Qtr4)# key pair value
 print(df.gather) 
 stocks <- data.frame(
   time  = as.Date('2020-1-1') +0:9,
   x = rnorm(10,0,1),
   y = rnorm(10,0,1),
   z = rnorm(10,0,1)
 )
 print(stocks)
 stock.gather <- gather(stocks,stock,price,x,y,z)
 print(stock.gather)
 # separate and unite
 dfnew <- data.frame(newcol=c('a.x','b.y','c.z'))
 print(dfnew)
 sepdf  <- separate(dfnew,newcol,c('abc','xyz'))
 print(sepdf)
 # unite(dataframe, colname(joined),abc,xyz,sep)
 
 