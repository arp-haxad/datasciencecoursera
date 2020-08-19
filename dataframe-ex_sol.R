# 1 creating  dataframe from the inputs
name <- c('sam','frank','amy')
age <- c(22,25,26)
weight <- c(150,160,120)
sex <- c('m','m','f')
df <- data.frame(row.names = name,age,weight,sex)
print(df)
# as convert one object to another object
# creating matrix
mat <-  matrix(1:25,nrow = 5)
print(mat)
# convert 
df2 = as.data.frame(mat) # converted to data frame
print(is.data.frame((df2)))
 df3 <- mtcars
 print(head(df3,3))
df4 <- mtcars[['mpg']]
avg.df4 <- mean((df4))
print(avg.df4)
#.........................................subset and choosing the those dataframe whose rows are  meeting some condition\
alpha = subset(mtcars,subset = cyl==6)
print(alpha)
# method two
print(mtcars[mtcars$cyl==6,])
# selecting multiple rows with  different column name 
print(mtcars[,c('am','gear','carb')])
# ading the new column in the dataframe
 data <- mtcars
data$performance <- data$hp/data$wt
print(head(data))
