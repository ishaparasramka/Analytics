# Practice Exercise -  XIMB

#Create a 100 row DF with the following variables
#gender, spl, age, experience, grade, placement
(gender = sample (c('M','F'), size= 100 , replace=T , prob=c(.6,.4)))
(age = sample (c(20:30), size=100,replace=T))
(spl = sample (c('BBA','MBA'), size=100, replace=T, prob=c(.5,.5)))
(experience = round(rnorm(100, 5, 1)))
(grades = sample (c('A','B','C','D'), size= 100, replace = T , prob=c(.4,.3,.2,.1)))
(placement = sample (c('y','n'), size=100, replace=T))

students=data.frame(gender, spl, age, experience, grades, placement , stringsAsFactors = F )
head(students)
str(students)
summary(students)
students

#Summarize the data in various ways using dplyr
library(dplyr)
students %>% group_by (gender) %>% summarise(mean(experience))
students %>% group_by (placement, gender) %>% summarise(mean(experience), min(experience), mean(age))

students %>% group_by (spl, gender) %>% summarise(mean(experience), max(experience))

students %>% filter(spl == 'BBA') %>% summarise(mean(age) , mean(experience))
students %>% filter(spl == 'BBA' & gender== 'F' & grades== 'A') %>% group_by(spl) %>% summarise(mean(age), mean(experience))

mean(students$experience)
summary(students$experience)

hist(students$age)
t1=table(students$placement)
t1
barplot(t1,col=1:2)
boxplot(students$age)
pairs(students[,c('age','experience')])
pie(t1)

par(mfrow=c(2,2))
pie(table(students$gender))
pie(table(students$experience))
pie(table(students$grades))
pie(table(students$spl))
par(mfrow=c(1,1))
table(students$gender,students$placement,students$spl)

#find students having largest experience in each spl for each gender

students %>% group_by(spl,gender) %>% arrange(spl,gender,experience) %>% top_n(1, experience)

write.csv(students,'./data/ximb.csv')
students2 = read.csv('./data/ximb.csv')
head(students2)

#clustering
km3 = kmeans(students[,c('age','experience')] , centers=3)
km3
km3#$centers
plot(students[,c('age','experience')], col=km3$cluster)

#decision tree
library(rpart)
library(rpart.plot)

tree = rpart(placement~ . , data=students)
tree
rpart.plot(tree,nn=T,cex=.8)
printcp(tree)
prune(tree, cp=.03)
ndata = sample_n(students, 3)
ndata
predict(tree, newdata=ndata, type='class')
predict(tree, newdata=ndata, type='prob')
