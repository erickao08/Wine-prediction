wine= read.csv('wine.csv')
str(wine)

summary(wine)

##one variable linear regression model  lm(dependent ~independent, data= dataset)
model1<-lm(Price ~AGST,data=wine)
summary(model1)