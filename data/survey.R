library(ggplot2)
library("ggthemes")

data <- read.csv("perl6-doc-survey.csv",sep=';')
data$Year <- as.factor(data$Year)
data$Score <- as.numeric(data$Score)
