# load MASS package
library(MASS)

# Check the dimensions of the Boston dataset
head(Boston)


train = 1:400
test = -train

# Speficy that we are going to use only two variables (lstat and medv)
variables = which(names(Boston) ==c("lstat", "medv"))
training_data = Boston[train, variables]
testing_data = Boston[test, variables]


dim(training_data)
dim(testing_data)
head(testing_data)

plot(training_data)

lstatTrain = training_data$lstat
medvTrain = training_data$medv

lstatTest = testing_data$lstat
medvTest = testing_data$medv


plot(log(lstatTrain), training_data$medv)

model = lm(medv ~ log(lstat), data = training_data)
model

medv=51.78-12.20*log(lstat)
abline(model)

test=predict(model, data.frame(lstat = c(5, 10, 15)))

print(test)
#predict(model, data.frame(lstatTrain = c(10)))
#predict(model, data.frame(lstatTrain = c(15)))

prediction = predict(model, data.frame(lstat = lstatTest))
prediction