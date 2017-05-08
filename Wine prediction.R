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

model_all<-lm(Price ~.-FrancePop,data=wine)
model4<-lm(Price~.-FrancePop-Age,data=wine)

wine_test<-read.csv('wine_test.csv')
str(wine_test)

predict_wine_test<-predict(model4,newdata=wine_test)


SSE_pre<-sum((wine_test$Price-predict_wine_test)^2)
SST_pre<-sum((wine_test$Price-mean(wine$Price))^2)
R_sqare<-1-(SSE_pre/SST_pre)
