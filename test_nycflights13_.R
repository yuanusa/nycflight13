library(dplyr)
library(rmarkdown)
library(ggplot2)
library(nycflights13)
dim(flights） # n of row and col
data = flights  # ??? why not working 
tail(data,n=5) # show last 5 rows
head(data,n=7) # show first 5 rows
head(data) # show first all rows
str(data)  # show you data kind, 
filter_1<-filter(data,month == 9 |month ==10, day <2) # find a new data filter_1 month=9, day <2
filter_1      #print/show the data set
slice_1 <- slice(data, 1:10) #the first 10 data in flights
slice_1
#arrange(flights[1:5,1:8] , desc(dep_delay))  # arrange by dep_delay, 1-5 row
#arrange(flights[1:3,],year,month,day)       
select(data[1:5,],year, month, day)        #select columns by name
select(data[1:5,],year:day)  #select columins all from year to day
select(data[1:5,], -(year:day))  #select all columns expect year to days
select(data, starts_with("dep_")) #find all columns with dep_, like dep_time...
select(data, -starts_with("dep_"))  #find all columns without dep_ 
# starts_with(), ends_with(), mathches(), contains(). 
distinct(data, origin, dest)  #unique zhuhe
mutate(data,    #mutate allows you to refer to columns that you/vd just created
       gain = arr_delay - dep_delay,    #gain hasnt been run but can bu used since mutate
       gain_per_hour = gain / (air_time / 60))
set.seed(1111) # name this set of sample 1111, next time could choose 2222 or 1112
sample_n(data,10)  #choose 10 of all to be sample 1111
sample_frac(data,0.01) #choose 1% of all data to be sample 1111
       
