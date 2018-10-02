# library
install.packages('wordcloud2')
library(wordcloud2) 
 

# have a look to the example dataset
head(demoFreq)
str(demoFreq)
wordcloud2(demoFreq, size=1.6)



word_text=sample(c('Perseverance','Passion','Commitment'),size=1000, replace=T)
word_freq=sample(c(1:2), 1000,T)
word_text=factor(word_text)
str(word_text)
word_final=data.frame(word_text,word_freq)
str(word_final)

wordcloud2(word_final[], size=0.6 , shape='star')

