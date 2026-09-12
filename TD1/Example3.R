library(ggplot2)
library(dplyr)
library(datarium)
library(dplyr)
library(MASS)
library(corrplot)

head(Boston)

summary(Boston)

cor(Boston$age, Boston$medv)

ggplot(Boston, aes(age, medv)) + geom_point()


linear.model = lm(medv ~ age, data = Boston)
print(linear.model)


ggplot(Boston, aes(age, medv)) + 
  geom_point() + 
  geom_smooth(method = lm)


summary(linear.model)


cor(Boston$rm, Boston$medv)


ggplot(Boston, aes(rm, medv)) +
  geom_point() +
  geom_smooth(method = lm)


linear.model = lm(medv ~ age + rm, data = Boston)
summary(linear.model)


linear02.model = lm(medv ~ ., data = Boston)
summary(linear02.model)


linear03.model = lm(medv ~ crim + zn + indus +chas + nox + rm + dis + rad + tax + ptratio + black + lstat, data = Boston)

summary(linear03.model)

c= cor(Boston)
corrplot.mixed(c)