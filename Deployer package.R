#data analysis using dplyr

install.packages(dplyr)
library(dplyr)
library(dplyr1)
?mtcars
dplyr::filter(mtcars, mpg > 25& am==1)
filter(mtcars, mpg > 25 & am==1)

mtcars %>% filter(mpg >25 & am==1) %>% arrange(wt) %>% summarise (n())
mtcars %>% filter(mpg >25 & am==1) %>% arrange(wt) %>% count()

count(mtcars
      
  mtcars %>% group)