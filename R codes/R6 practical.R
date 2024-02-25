salary
min(salary)
max(salary)
mean(salary)
median(salary)
range(salary)
sd(salary)
IQR(salary)
sd(salary)
var(salary)
quantile(salary)
summary(salary)
quantile(salary,seq(0,1,0.1))

head(mtcars)
summary(mtcars$mpg)
summary(mtcars$disp)
by(mtcars$mpg,mtcars$cyl,summary)

summary(EmpFinalData)
by(EmpFinalData$salary,EmpFinalData$Dept,summary)
students <- read.csv("students.csv")
students

min(students$weight)
max(students$weight)
mean(students$weight)
median(students$weight)
range(students$weight)
IQR(students$weight)
sd(students$weight)
var(students$weight)
quantile(students$weight)

summary(students)
by(students$Height,students$Gender,summary)
by(students$Age,students$Gender,summary)

data("ToothGrowth")
head(ToothGrowth)
summary(ToothGrowth)
summary(ToothGrowth$len)
by(ToothGrowth$len,ToothGrowth$supp,summary)

data("iris")
head(iris)
str(iris)
summary(iris)
by(iris$Sepal.Length,iris$Species, summary)
by(iris$Sepal.Width,iris$Species,summary)
by(iris$Petal.Length,iris$Species,summary)
by(iris$Petal.Width,iris$Species,summary)

head(iris)
sapply(iris[,-5],mean)
sapply(iris[,-5],quantile)

install.packages("pastecs")
library(pastecs)

stat.desc(iris[,-5])
result <- stat.desc(iris[,-5])
round(result,2)

install.packages("psych")
library(psych)
describe(iris[,-5])

head(ToothGrowth)
ToothGrowth
boxplot(ToothGrowth$len,xlab="length",col="orange",border = "brown",horizontal = TRUE)
plot(iris$Sepal.Length~iris$Species,main="Length vs species",col="red",pch=19,horizontal=TRUE)
pairs(~iris$Sepal.Length+iris$Sepal.Width+iris$Petal.Width,data=iris,main="Sactterplot matrix")
