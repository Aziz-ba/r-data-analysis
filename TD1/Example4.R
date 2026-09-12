library(ggplot2)
library(caTools)
library(ggplot2)

setwd(dir = "C:/Users/benay/Documents/RstudioTP/TD1")
data <- read.csv('./Social_Network_Ads.csv')

str(data)
summary(data)

set.seed(123)
split = sample.split(data$Purchased, SplitRatio = 0.75)
training_set = subset(data, split == FALSE)
test_set = subset(data, split == TRUE)

training_set[c(3,4)] = scale(training_set[c(3,4)])
test_set[c(3,4)] = scale(test_set[c(3,4)])

model1 <- glm(Purchased ~ Age,family = "binomial", data = training_set)

summary(model1)

coef(model1)

b0 = coef(model1)[1]
b1 =  coef(model1)[2]
p <- function(x) {return(1/(1+exp(-b0-b1*x)))}
plot(training_set$Age,training_set$Purchased, col='blue')
points(training_set$Age,p(training_set$Age), col = 'red')

model2 <- glm(Purchased ~ Age + EstimatedSalary,family = "binomial", data = training_set)

summary(model2)

prob_pred = predict(model2, newdata = test_set[c(3,4)], type="response")
y_pred = ifelse(prob_pred > 0.5, 1,0)
y_pred
test_set[,5]

cm <- table(y_pred, test_set[,5])

metrics <- function(CM) {
  acc = (CM[1,1]+CM[2,2])/(CM[1,1]+CM[1,2]+CM[2,1]+CM[2,2])
  spc = CM[1,1]/(CM[1,1]+CM[1,2])
  ses = CM[2,2]/(CM[2,2]+CM[2,1])
  my_list <- list("accuracy" = acc, "specificity" = spc, "sensitivity" = ses)
  return(my_list)}

print(paste("accuracy: ",metrics(cm)$accuracy))

print(paste("specificity: ",metrics(cm)$specificity))

print(paste("sensitivity: ",metrics(cm)$sensitivity))

library(ROCR)
score <- prediction(prob_pred1,test_set[,5])
performance(score1,"auc")
auc2 = as.numeric( performance(score1,"auc")@y.values)
auc2


library(ROCR)
score1 <- prediction(prob_pred,test_set[,5])
performance(score1,"auc")
auc1 = as.numeric( performance(score1,"auc")@y.values)
auc1



plot(performance(score,"tpr","fpr"),col="green")
plot(performance(score1,"tpr","fpr"),col="blue",add=T)
abline(0,1,lty=8, col='red')
