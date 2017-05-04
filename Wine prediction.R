wine= read.csv('wine.csv')
str(wine)

summary(wine)

##one variable linear regression model  lm(dependent ~independent, data= dataset)
model1<-lm(Price ~AGST,data=wine)
summary(model1)

model1$residuals

SSE<- sum(model1$residuals^2)

model2<-lm(Price ~AGST+HarvestRain, data=wine)
model2
SSE2<-sum(model2$residuals^2)

model3<-lm(Price ~AGST+HarvestRain+WinterRain+Age+FrancePop, data=wine)
SSE3 <- sum(model3$residuals^2)
