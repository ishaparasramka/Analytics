# Combined Plots

#plot, histogram, pie, boxplot, linechart, correlation plot


#plot
women
plot(women)
plot(women, type='p', pch=19)
plot(women, type='p', pch=15)
plot(women, type='p', pch=15, col='red')
plot(women, type='b') #both the lines and point

plot(women, type='l')
plot(women, type='b', pch=18, lty=2, col=2)
plot(women, xlim=c(30,100), ylim=c(min(women$weight)-10, 200), pch=10)

#more features with plot
plot(x=women$weight, y=women$height, pch=15, xlab='Weight', ylab='Height', col='red', cex=2, type='b')
title(main='Main Title', sub='Sub Title')
#see cheat sheet on base graphs

plot(women) #line of best fit-regression
abline(lm(women$weight ~ women$height), col='red', lty=2, lwd=4)


#boxplot
boxplot(women$height)
abline(h=c(58, 62,65,68,72))

#draw lines on plot for number summary
summary(women)
quantile(women$height)
quantile(women$height, seq(0,1,.1)) #every 10%
stem(women$height)

boxplot(women$height, col='green')
abline(h=quantile(women$height))
text(1+.2, quantile(women$height), labels=c('min','1Q','median','3Q','max'))

#histogram
hist(women$height)
hist(women$height, breaks=10)
hist(women$height, breaks=5, col=1:5)

#histogram2
(x = rnorm(100,50,10))
hist(x)

hist(x, freq=F, col=1:5) # becomes a density plot
lines(density(x))

#density plot : shape of data
plot(density(x), col='red')

#pie
gender
table(gender)

pie(table(gender))
x = c(10,20,40,50)
pie(x)
xlabels = c('A','B','C','D')
x/sum(x)
(labels2 =  paste(xlabels, round(x/sum(x),2) * 100, sep='-'))
pie(x, labels=labels2) #put names to the labels
x

#barplot #pie should be avoided as you would not be able to differentiate the height and width
barplot(x,col=1:4)
barplot(x,col=1:4, horiz = T) #vertical bar graph

#correlation plot
pairs(women)
cor(women$height,women$weight) #value of cor between 0 to 1; covariance tells you the direction 
cov(women)
cov(women$height,women$weight) 

head(mtcars)
?mtcars

cor(mtcars)
names(mtcars)
pairs(mtcars)
pairs(mtcars[1:4])
options(digits=4)

#divide range into step of 15 ie 10 levels
breaks =seq(0,150,by=15)


#Continuous Data 
set.seed(1234)
x3 = runif(100,0,150)  # 0 to 150 marks range, 100 values 
x3
x3 = ceiling(x3)  #round to higher value
x3
range(x3)
# Divide range into step of 15 ie 10 levels
breaks = seq(0,150,by=15)
breaks
length(breaks)
x3
#x3[1] = 60; x3[2] = 75
x3.cut = cut(x3, breaks)
x3.cut
table(x3.cut)
cbind(table(x3.cut))  #see it vertically

       
#give intervals a character values a, b..
(x3.cut = cut(x3, breaks, labels=letters[1:10]))
#(x3.cut = cut(x3, breaks, labels=letters[1:length(breaks)-1]))
x3.cut
