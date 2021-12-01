install.packages("corrplot")
install.packages("ggplot2")

library(MASS)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(corrplot)
library(Rcpp)
library(olsrr)
library(rpart)
library(mgcv)
library(boot)
library(rpart)
library(rpart.plot)

getwd()

setwd('/Users/anagarciagarcia/other_repos/Understanding_R_workshop')
df = read_csv("data/boston.csv")
head(Boston, 2)

data(Boston, package="MASS")

dim(Boston)

str(Boston)

summary(Boston)

sum(is.na(Boston))

sum(duplicated(Boston))

scatter.smooth(x=df$medv, y=df$age, main="medv ~ age")  # scatterplot

#par(mfrow=c(2, 2))  # divide graph area in 2 columns
boxplot(df$age, main="age", sub=paste("Outlier rows: ", boxplot.stats(df$age)$out))  # box plot for 'age'
boxplot(df$zn, main="zn", sub=paste("Outlier rows: ", boxplot.stats(df$zn)$out))  # box plot for 'distance'

boxplot(df$indus, main="indus", sub=paste("Outlier rows: ", boxplot.stats(df$indus)$out))  # box plot for 'indus'
boxplot(df$nox, main="nox", sub=paste("Outlier rows: ", boxplot.stats(df$nox)$out))  # box plot for 'nox'


plot(density(df$medv), main="Density Plot: medv", ylab="Frequency", 2)  # density plot for 'speed'
polygon(density(df$medv), col="grey")

#checking correlation between variables
corrplot(cor(Boston), method = "number", type = "upper", diag = FALSE)

set.seed(12383010) # Set seed for reproducibility as random_state in python
index <- sample(nrow(df), nrow(df) * 0.80)
df.train <- df[index, ]
df.test <- df[-index, ]

head(df.test,3)

head(df.train, 3)

model1 <- lm(medv ~ 1, data = dfn.train)
model1.sum <- summary(model1)
model1.sum

model2 <- lm(medv ~ ., data = df.train)
model2.sum <- summary(model2)
model2.sum

ols_step_all_possible(model2)

ols_step_best_subset(model2)

