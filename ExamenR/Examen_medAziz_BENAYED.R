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

#Exercice2:

#1)

#L'analyse de la régression logistique est l'application de régression avec un résultat dichotomique 
#et une variable indépendante alors que a régression logistique est considérée comme un modèle linéaire généralisé 
#car le résultat dépend toujours de la somme des entrées et des paramètres.

#2)

library(tidyverse)
library(caret)
theme_set(theme_bw())
# Load the data and remove NAs
data("PimaIndiansDiabetes2", package = "mlbench")
PimaIndiansDiabetes2 <- na.omit(PimaIndiansDiabetes2)
# Inspect the data
sample_n(PimaIndiansDiabetes2, 3)
# Split the data into training and test set
set.seed(123)
training.samples <- PimaIndiansDiabetes2$diabetes %>%
  createDataPartition(p = 0.8, list = FALSE)
train.data <- PimaIndiansDiabetes2[training.samples, ]
test.data <- PimaIndiansDiabetes2[-training.samples, ]

#3)

dim(train.data)
#dimension de train.data : [1] 314   9

dim(test.data)

#dimension de test.data : [1] 78  9

#4)

# Fit the model
model <- glm(diabetes ~., data = train.data, family = binomial)

#5)

summary(model)
#6)

probabilities <- model%>%predict(test.data, type = "response")

#7)

probabilities

#8)

predicted.classes <- ifelse(probabilities > 0.5, "pos", "neg")
predicted.classes

#9)
#Accuracy : 0.75
mean(predicted.classes == test.data$diabetes)

#10)

model2 <- glm( diabetes ~ pregnant + glucose  + mass , 
               data = train.data, family = binomial)
model
model2
