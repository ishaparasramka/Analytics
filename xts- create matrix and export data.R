# xts  - create object and export data
library(xts)

# xts  - create object and export data


#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object
(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)

#Creating a matrix of time series data- stock prices, suppose
sprices1 = ceiling(rnorm(90, mean=100, sd=5)) #get data in normal distribution
sprice = matrix(sprices1, ncol=3) #created a matix with 3 cols
head(sprice)
dtindex = as.Date("2018-09-01") + 0:29 # created dayes for row names
xts2 = xts(sprice, dtindex)
head(xts2)
colnames(xts2) = c('SBI', 'ICICI', 'PNB') #col names
head(xts2)
class(xts2) #extended time series data

#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")
#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")
#create matrix : 1 col for 1 share
(stockprices = matrix(c(100,103, 105, 205, 210, 207, 530, 500, 535), ncol=3, byrow = F))
(cdtindex = c('25-09-2018', '27-09-2018', '28-09-2018'))
#convert to date format
(dtindex = as.Date(cdtindex, format="%d-%m-%Y"))
#now we have index + matrix for xts object

(ts_xts = xts(x=stockprices, order.by=dtindex))
#this series is not continuous but has missing dates

#-----
#matrix data extract
coredata(ts_xts)
#extract dates
index(ts_xts)


#write to csv file
write.zoo(ts_xts, "./data/zoodata.csv")