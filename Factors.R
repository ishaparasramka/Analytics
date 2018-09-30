#create a vector to allot my garde according to said probabilities
(grades = sample(c(LETTERS[1:4]), size=30, replace=T, prob=c(.4,.3,.2,.1)))
summary(grades)
(gradesF =  factor(grades))
gradesF #no direction in it
summary(grades)  
summary(gradesF)
table(grades)
table(gradesF)

class(gradesF) #assigning order to it
(gradesFO =  factor(grades, ordered=T)) #now we have an order
(gradesFO1 = factor(grades, ordered=T, levels=c('B','C','A','D')))
summary(gradesFO1)
(marks = ceiling(rnorm(30,mean=60,sd=5))) #random 30 marks with said mean and sd
(gender= factor(sample(c('m','f'), size=30, replace=T)))
#creating a data frame from these 2 columns
(student1 = data.frame(marks, gradesFO1))
boxplot( marks ~ gradesFO1, data=student1) 
boxplot( marks ~ gradesFO1+ gender, data=student1)
boxplot(marks)
summary(marks)
#now i want to draw these lines on boxplot
abline(h = summary(marks))

quantile(marks)
