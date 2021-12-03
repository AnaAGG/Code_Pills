###################
# BOSTON ANALYSIS #
###################

##############################################################################################################
#Boston housing data is a data set in package MASS. The data set has 506 rows and 14 columns.

#This report provides an analysis and evaluation of the factors affecting the median value of 
# the owner occupied homes in the suburbs of Boston. The in-built data set of Boston Housing Data 
# in package MASS is used for this analysis and various factors about the structural quality, neighbourhood, 
# accessibility and air pollution such as per capita crime rate by town, proportion of non-retail business acres 
# per town, index of accessibility to radial highways etc are taken into account for this study.

#Approach Methods of analysis includes the following * Summary statistics of the variables and finding
# correlation between variables, * Exploratory data analysis using visualization * Random sampling of data 
# set into 80/20 training and testing data set * Fitting various models such as generalized linear regression, 
# regression tree, generalized additive model (GAM) and neural network * Finally, comparing the models based on
# in-sample (MSPE) and out-of-sample prediction errors (MSPE).
##################################################################################################################

# Packages required

library(MASS)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(corrplot)
library(leaps)
library(olsrr)
library(rpart)
library(mgcv)
library(boot)
library(rpart)
library(rpart.plot)

########################
# Exploratory analysis #
########################
df <- read_csv("data/boston.csv")

# The shape of the dataframe, the shape method in python
dim(df)
head(df)
# Displaying the internal structure of a R object, the dtypes in python
str(df)
sum(is.na(df))
#summary statistics
summary(df)

#Check for missing values


#Check for duplicated values
sum(duplicated(df))
#####################
# Graphical analysis #
#####################

# Scatter plot
scatter.smooth(x=df$medv, y=df$age, main="medv ~ age")

# Check Outliers
boxplot(df$rm, main="rm", sub=paste("Outlier rows: ", boxplot.stats(df$rm)$out))  # box plot for 'indus'

# Density plot – Check if the response variable is close to normality
plot(density(df$medv), main="Density Plot: medv", ylab="Frequency")  # density plot for 'speed'

# Correlation plot
corrplot(cor(df), method = "number", type = "upper", diag = FALSE)

######################
# Modelling the data #
######################

# Split data set into 80:20 train and test data

# Building linear regression model
set.seed(12383010)

m1 <- lm(medv ~ 1, data = df)
summary(m1)

m2 <- lm(medv ~ ., data = df)
summary(m2)


#  Variable Selection

ols_step_all_possible(model2) # return all possible models

ols_step_best_subset(model2) # return the best models. 
