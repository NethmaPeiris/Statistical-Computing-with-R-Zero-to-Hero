#Visualization in R
x <- c(40,15,30,50,20,35)
labels <-c("Apple","Kiwi","Grape","Banana","Pear","Orange")
pie(x,labels)

pie(x,labels,main="Favourite Fruit pie chart",col=rainbow(length(x)))

#give colors manually
pie(x,labels,main="Favourite Fruit pie chart",col=c("red","orange","yellow","blue","green","purple"))

#another way to give colors
pie(x,labels,main="Favourite fruit pie chart",col=gray(seq(0.4,1.0,length((x)))))

pieprecent <- round(100*x/sum(x))
lbls <- paste(pieprecent,"%")
pie(x,labels = lbls,col=rainbow(length(x)))
legend("topright",c("apple","kiwi","grape","banana","pear","orange"),cex=0.8,fill=rainbow(length(x)))

#bar plot
x<- c(40,15,30,50,20,35)
labels <- c("apple","kiwi","grape","banana","pear","orange")
barplot(x,names.arg = labels)
barplot(x,names.arg=labels,xlab="Fruit",ylab="no of students",col="blue",main="Favourite fruit chart",border="red")

pieprecent<-round(100*x/sum(x))
lbls <- paste(pieprecent,"%")
pie(x,labels=lbls,col=rainbow(length(x)))
legend("topright",c("apple","kiwi","banana","grape","pear","orange"),cex=0.8,fill=rainbow(length(x)))

barplot(x,names.arg = labels)
barplot(x,names.arg = labels,xlab="fruit",ylab="No of responds",col=rainbow(length(x)),border="black",main="Favourite Fruit bar plot")

barplot(x,names.arg=labels,xlab="Fruit",ylab="No of responds",col=rainbow(length(x)),main="Favourite fruite plot",border = "black",horiz = TRUE)

gender <- c("Male","Female")
Fruit <- c("apple","kiwi","grape","banana","pear","orange")
values <- matrix(c(18,22,5,10,18,12,30,20,12,8,15,20),nrow=2,ncol=6)
colors <- c("blue","green")
barplot(values,main="favourite fruit chart",names.arg = Fruit,xlab="Fruit",ylab="No of responds",col=colors)

barplot(values,main="favourite fruit chart",names.arg=Fruit,col=colors,xlab="Fruit",ylab="No of responds",beside = TRUE)
legend("topright",gender,cex=0.8,fill=colors)

#line chart
temp = c(30,35,40,36,31,30,27,42,34,25,33,36)
plot(temp,type="o")
plot(temp,type="o",main="Monthly Temperature",xlab="month",ylab="Temperature",col="blue")

#multiple line chart
temp_galle <- c(30,35,40,36,31,30,27,45,34,25,33,36)
temp_kandy <- c(25,30,37,23,38,35,20,40,38,30,28,35)
plot(temp_galle,main="monthly temperature in kandy and galle",xlab="Month",ylab="Temperature",type="o",col="red")
lines(temp_kandy,col="blue",type="o")
legend("topright",c("Temperature in galle","Temperature in Kandy"),fill=c("red","blue"),cex=0.4)

#Histogram
EmpFinalData <- read.csv("EmpFinaData.csv")
salary <-EmpFinalData$salary
salary

hist(salary,xlab="salary",col="blue",border = "black")
hist(salary,xlab="salary",col="blue",border="black",breaks = 2)
hist(salary,xlab="salary",col="blue",border="black",breaks=5)

#box plot
mtcars
boxplot(mtcars$mpg)
boxplot(mtcars$mpg,horizontal = TRUE,col="orange",border ="brown",xlab="MPG",ylab="mtcars",main="mtcars MPG")
boxplot(mtcars$mpg~mtcars$cyl,horizontal = TRUE,col="orange",border="brown",xlab="no of cylinders",ylab="mpg")

#Exercise
EmpFinalData
boxplot(EmpFinalData$salary,horizontal = TRUE,xlab="salary",main="Salary plot",col="orange",border="brown")

mtcars
plot(mtcars$wt,mtcars$mpg,xlab="weight",ylab="Milage",main="weight vs mileage")

plot(mtcars$wt,mtcars$mpg,xlab="weight",ylab="Milage",main="weight vs mileage",xlim=c(2.5,5),ylim=c(15,30),col="red",pch=19)
abline(lm(mtcars$mpg~mtcars$wt,data = mtcars),col="blue")

pairs(~wt+mpg+disp+cyl,data=mtcars,main="Scatterplot matrix")
Students
plot(Students$weight~Students$Height,main="Weight vs Height",xlab="Weight",ylab="Height",col="red",pch=19)
plot(Students$Age~Students$weight,main="Weight vs Age",xlab="Weight",ylab="Age",col="red",pch=19)
plot(Students$Age~Students$Height,main="Height vs Age",xlab="Height",yalb="Age",col="red",pch=19)
pairs(~weight+Height+Age,data=Students,main="Scatterplot Matrix")
