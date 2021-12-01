# Intro to Linear Regression

![main](https://github.com/AnaAGG/Code_Pills/blob/main/Intro-Linear-Regression/Images/main.png)

Linear regression is a basic and commonly used type of predictive analysis.  

The overall idea of regression is to examine two things:

1. Does a set of predictor variables do a good job in predicting an outcome (dependent) variable?


2. Which variables in particular are significant predictors of the outcome variable, and in what way do they–indicated by the magnitude and sign of the beta estimates–impact the outcome variable?  

These regression estimates are used to explain the relationship between one dependent variable and one or more independent variables.  The simplest form of the regression equation with one dependent and one independent variable is defined by the formula: 


**What does this formula mean?**

- `Y`: is the response variable (dependent variable)


- `β0 (intercept)` : the mean of what Y would be worth in the absence of any absence of independent variables


- `β1, β2`: combination of predictor (or independent) variables

- `ε`: value that assumes all variation in Y not explained by variations in the independent variables

Therefore, we have two main parameters:

Slope: it tells you how much you can expect Y to change as X increases. In general, the units for slope are the units of the Y variable per units of the X variable. It's a ratio of change in Y per change in X.
Intercept: the mean value of the response variable when all of the predictor variables in the model are equal to zero, i.e. there is no effect of our predictor variables in our model.
