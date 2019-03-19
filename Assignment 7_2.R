#1. Write a program to create barplots for all the categorical columns in mtcars.

counts<- table(mtcars$cyl)
barplot(counts ,main ="bar plot of cyl",xlab="cyl",ylab = "counts",col="blue")
counts<- table(mtcars$carb)
barplot(counts ,main ="bar plot of carb",xlab="carb",ylab = "counts",col="pink")
counts<- table(mtcars$gear)
barplot(counts ,main ="bar plot of gear",xlab="gear",ylab = "counts",col="yellow")
counts<- table(mtcars$am)
barplot(counts ,main ="bar plot of am",xlab="am",ylab = "counts",col="red")
counts<- table(mtcars$vs)
barplot(counts ,main ="bar plot of vs",xlab="vs",ylab = "counts",col="green")


#2. Create a scatterplot matrix by gear types in mtcars dataset.

library(ggplot2)
library(car)

scatterplotMatrix(~mpg+disp+drat+hp|gear,data=mtcars,
                  main="Three Gear Options")


#3. Write a program to create a plot density by class variable.

class(mtcars)

#plot density of mpg variable
d<- density(mtcars$mpg)
plot(d, main="kernel density of mpg")
polygon(d,col="blue",border ="black")

#plot density of disp variable
c<- density(mtcars$disp)
plot(c, main="kernel density of disp")
polygon(c,col="green",border ="red")