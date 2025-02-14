#Script to plot the logistic growth data

growth_data <- read.csv("experiment3.csv")

install.packages("ggplot2")
library(ggplot2)
# input the data into the file, chosen data = experiment 3 

ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  xlab("t") +
  ylab("y") +
  theme_bw()

ggplot(aes(t,N), data = growth_data) +
  geom_point() +
  xlab("t") +
  ylab("y") +
  scale_y_continuous(trans='log10')
