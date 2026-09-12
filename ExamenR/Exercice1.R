#EXercice1

#1)

library(tidyverse)
data("marketing", package = "datarium")
dim(marketing)

#2)
#la dimension de marketing: [1] 200   4

#3)
res.lm <- lm(sales ~ youtube*facebook, data = marketing)
summary(res.lm)

#4)
pred <- predict(model)
MSE <- mean((pred - marketing$sales)^2)
MSE