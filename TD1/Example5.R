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
score <- prediction(prob_pred,test_set[,5])
y_pred = ifelse(prob_pred > 0.5, 1,0)
y_pred
prob_pred

library(ROCR)
score <- prediction(prob_pred,test_set[,5])
performance(score,"auc")
auc1 = as.numeric( performance(score,"auc")@y.values)
auc1

plot(performance(score,"tpr","fpr"),col="green")
abline(0,1,lty=8)