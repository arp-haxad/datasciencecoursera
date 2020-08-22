# dated 21 august 2020
# installing package the dplyr
# installing package data
# importing the libraries
library(dplyr)
library(nycflights13)
# filter -> it filter the subset of the rows within a given dataframe
 # printing the first five rows the filtered dataframe
print(head(filter(flights,month==2,day==4,carrier=='AA')))
# slice -> just filter out the rows with position
slc<-slice(flights,1:10)
print(slc)
# arrange -> arrange is used to return the rows  ordered by the columns given in the column
arr <- arrange(flights,year,month,day)
print(arr) # dataframe ordered by the arguments
# select , select only select the particular column from the dataframe, 
sel <- select(flights,carrier)
print(sel)
# rename(df, new_name= old_name)
# renaming the carrier column as airline_flight_name
rename(flights,airline_flight_name = carrier)
print(str(flights))
# distinct . it will  print the distinct values from the column
dis  <- distinct(select(flights,carrier))
print(dis)
# mutate -> mutate function added a column in a dataframe also.
new_df <-  mutate(flights,new_col = hour - minute)
print(select(new_df,new_col))
# transmute  -> just return only the new column of mutate
# summarise -> this  is the just the group by , returning the single function from going through all the columns
suma <- summarise(flights, avg_air_time = mean(air_time,na.rm = T))
print(suma)
# sample_n, sample_frac -> it will return the n rows or the % of the rows given in argument



