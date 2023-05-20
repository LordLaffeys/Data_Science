#mtcars dataset analysis

#load required library
library(stats)
library(dplyr)
library(ggplot2)

# load data frame to df object
df = mtcars
?mtcars

# show first 5 in dataset
head(df)

#check n rows and columns
dim(df)

#check dataframe structure 
str(df)

# descriptive statistic
summary(df)

# check missing value
sapply(X = df,FUN = sumMisVal)

# visualization

# relationship between mpg and wt by hp factor
ggplot(
  df,
  aes(x = wt, y = mpg, color = as.factor(cyl))
) + geom_point() +
  guides(color = guide_legend(title = "Cyclinders")) +
  ggtitle("Car weight by mpg based by their cyclinders")

# visulazie how car perform by their horse power and transmissions
ggplot(
  df,
  aes(x = hp, y = qsec, color = as.factor(am))
) + geom_point() +
  guides(color = guide_legend(title = "Transmission")) +
  ggtitle("1/4 miles in seconds by horse power VS Transmission")

# visualize car weight and their distance per gallon and transmission
ggplot(
  df,
  aes(x = wt, y = mpg, color = as.factor(am))
) + geom_point() +
  guides(color = guide_legend(title = "Transmission")) +
  ggtitle("  Miles per gallon by car weight VS transmission")

# countign car based on transmission used
ggplot(
  df,
  aes(x = am)
) + geom_bar() + ggtitle("Automatic (0) vs Manual (1)") +
  ggtitle("Car transmission distribution")
