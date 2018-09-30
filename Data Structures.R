# Data structures in R

#Vectors ----
x=1:10 #create seq of nos from 1 to 10 
x  #Need to press ctrl+enter
X1 <- 1:20 #older way of coding #assigning
X1 #Need to press ctrl+enter #Printing

(x1=1:30) #assinging as well as printing #changing the position by increasing or decreasing the size of the source box
(x2=c(1,2,13,4,5))
class(x2) #telling me the type of vector

(x3=letters[1:10]) #fast way of creating alphabets
class(x3)


LETTERS[1:26]

(x3b = c('a',"Dhiraj","4"))
class(x3b)

(x4=c(T,FALSE,TRUE,T,F)) #makes it in the form where you can either write it as single T or TRUe and same for f and False
class(x4)

x5=c(3L,5L)
class(x5)
x5a = c(3,5)
class(x5a)

(x5b = c(1, 'a', T, 4L))
class(x5b)

#access elements
(x6 = seq(0,100,by=3)) #starting, ending and interval (from,to,by)
methods(class='numeric')
?seq
#[1] 0 2 4 6 8 10
ls() #variables in my environment

x6 #number of elements
length(x6)
x6[20]
x6[3] # access the 3rd element
#[1] 4
x6[c(2,4)]  #access 2nd and 4th element'
x6[-1] #access all but the 1st element

x6[-c(1,10)]
x6[c(2,-4)] #cannot mix positive and negative integers #error in x6[c(2,-4)] : only 0's may be mixed with the negative subscripts
x6[c(2.4,3.54)] #real numbers are truncated to integers #equivalent to c(2,3)
x6[-c(1,5,20)]
x6
length(x6)
x6[-(length(x6)-1)]
(x7 = c(x6,x2)) #combining 2 vectors
#modify
x6
sort(x6)
sort(x6[-c(1,2)])
sort(x6,decreasing=T)
sort(x6,decreasing=F)

rev(x6)

seq(-3,10,by=.2)
(x= 13:2)
x6[-c(1:12)] #removes the elements from 1 to 12

(x= -3:2)
x[2] <- 0; x #modify the 2nd element
#[1] -3 0 -1 0 1 2 
x #element for comparison
x <0 # logical comparison if elements are less than 0

x[x<0] = 5;x #modify elements less than 0
x[x<= 1 & x >= -1]= 100;x
x

x = x[1:4]; x #truncate x to first 4 elements 

#delete vector
(x = seq(1,5, length.out = 15))
x = NULL
x

x[4] #null


(x =  rnorm(100)) #Standard normal distribution mean =0 sd=1
plot(density(x))
(x1 = rnorm(1000, mean=50, sd=5)) #as the parameters become large you come to the parameters you have assigned to it for example 92
(x2 = rnorm(1000000, mean=50, sd=5))
mean (x2)
abline(v=mean(x1), h=0.04)
plot(density(x1))
mean(x1)


# Matrix ----
1:12
100:111
(m1 = matrix(1:12, nrow=4))
(m2 = matrix(1:12, ncol=3, byrow=T)) #bydefault the data is filled by column but if i want to fill by row need to specify byrow
x=101:124
length(x)
matrix(x, ncol=6)
class(m1)

attributes(m1) #row name and col name will also be displayed
dim(m1) # only 4 and 3 will be displayed
m1

#access elements of matrix
m1[1,2:3] # 1st row with 2nd and srd column
m1[c(1,3),] #blank means all colns
m1[,-c(1,3)]

m1
paste("c","D", sep="-")
paste("c","D", "-")
paste("c",1:100, sep="-")

(colnames(m1)=paste('C',1:3, sep=''))

#vector to matrix
m3=1:24
dim(m3)=c(6,4)
m3

m2
m2[c(TRUE,F,T,F), c(2,3)] #logical indexing

m2
m2[m2>5] #all elements greater than 5

m1;m2
m1[1:2,1:2]
m1[c('R1'),c('c1','c3')] #will be complete once you assign the names 

#modify vector
m2
m2[2,2] =5 #assigning an element as 5
rbind(m2, c(50,60,70)) #its not forever- only for this function
cbind(m2, c(3,4,5,6)) #its not forever- only for this function

colSums(m1);rowSums(m1)
colMeans(m1);rowMeans(m1)

t(m1) #transpose #changes

m1
sweep(m1,MARGIN = 1, STATS = c(2,3,4,5), FUN="+") #rowise
sweep(m1, MARGIN = 2, STATS = c(2,3,4), FUN="*") #colwise

#addmargins
addmargins(m1,margin=1,sum) #colwise
addmargins(m1,1,sd)

addmargins(m1,2,mean) #rowise
addmargins(m1,c(1,2), mean) #row and col wise fn
addmargins(m1,c(1,2),list(list(mean,sum,max),list(var,sd)))

#Arrays ----

# Data Frames ----
(rollno=1:30)
(sname = paste('student',1:30,sep=''))
(gender = sample(c('m','f'), size=30,replace=T, prob=c(.7,.3)))
(marks = floor(rnorm(30,mean=50,sd=30)))
(marks2 = ceiling(rnorm(30,40,5)))
(course = sample(c('BBA','MBA'), size=30, replace=T, prob=c(.5,.5)))
rollno; sname; gender
marks; marks2;course

#create df
df1=data.frame(rollno, sname, gender, marks, marks2, course, stringsAsFactors = F)
str(df1) #structure of DF
head(df1) #top 6 rows
head(df1,n=3) #top 3 rows
tail(df1,n=6)
summary(df1)
df1$gender = factor(df1$gender)
df1$course = factor(df1$course)
str(df1)
summary(df1)



#list ----
# Factors ----
