library(datarium)
library(ggpubr)
#library(ggplot2)

data("marketing", package = "datarium")
head(marketing, 4)

#dim(marketing)

#data(marketing)

summary(res.lm)

summary(marketing)

#ggplot(marketing, aes(x = youtube, y = sales)) + geom_point() + stat_smooth()
#cov(x,y)=E[(x-E(x))(y-E(y))]
#cor

scatter.smooth(x=marketing$sales, y=marketing$youtube)

cor(x=marketing$sales, y=marketing$youtube)

res.lm <- lm(sales ~ youtube*facebook, data = marketing)
summary(res.lm)
#x = marketing$youtube
#y = marketing$sales
#cor(x, y)


model2 <- lm(sales ~ youtube, data = marketing)
model2

#summary(model2)

ggplot(marketing, aes(youtube, sales)) + geom_point() + stat_smooth(method = lm)

help(summary)
