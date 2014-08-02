#!/usr/bin/env Rscript

setwd("~/Documents/R/AutomaticRuleGeneration")
 
################################################################################
# get the IRIS Data Set
################################################################################
data(iris)

# split predictors from outcome
x <- iris[,1:4]
y <- iris[,5]

################################################################################
# Visualize the data
################################################################################

par(mfrow = c(2, 2), mar = c(5,4,4,2), oma = c(1, 1, 1, 1))
for (name in colnames(x)) {
  boxplot(x[[name]]~y , col=c(3:(length(unique(y))+2)),ylab="Outcome", xlab=name)
}

################################################################################
# Train a single tree
################################################################################
library(rpart)
library(caret)
rPartMdl <- train( x, y, method = "rpart2", tuneLength = 10, trControl = trainControl( method = "cv"))
str(rPartMdl)

################################################################################
# Show the created rules
################################################################################
library( partykit)
par(mfrow = c(1, 1), mar = c(5,4,4,2), oma = c(0, 0, 0, 0))
rulesTree <- as.party(rPartMdl$finalModel)
plot(rulesTree)

par(mfrow = c(1, 1), mar = c(5,4,4,2), oma = c(0, 0, 0, 0))
library(rattle)
fancyRpartPlot(rPartMdl$finalModel)

