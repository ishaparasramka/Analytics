fit1 = lm(weight ~ height, data=women)  # creating a model
summary(fit1)  #summary of the Model
range(women$height)
(ndata =  data.frame(height = c(58.5,60.7)))
(p = predict(fit1, newdata = ndata))
cbind(ndata, p)
plot(fit1)


