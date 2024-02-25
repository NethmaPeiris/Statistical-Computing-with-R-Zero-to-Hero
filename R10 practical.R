weight <- c(17.6,20.6,22.2,15.3,20.9,21.0,18.9,18.9,18.9,18.2)
shapiro.test(weight)
#p value is greater than 0.05 there this is normal distribution
res <- t.test(weight,mu=25)
res
res <- t.test(weight,mu=25,alternative = "less")
res
res <- t.test(weight,mu=25,alternative = "greater")
res
res$statistic
res$parameter
res$p.value
res$conf.int
res$estimate

#Exercise
sugarLevel<-rnorm(n=30,mean=9.8,sd=0.05)
shapiro.test(sugarLevel)
result <- t.test(sugarLevel)
result
result<- t.test(sugarLevel,mu=10,alternative ="greater" )
result

#Exercise 2
install.packages("datarium")
library(datarium)
datarium::mice
weight <- datarium::mice$weight
shapiro.test(weight)
res <- t.test(weight,mu=25,alternative = "greater")
res

women_weight <- c(38.9,61.2,73.3,21.8,63.4,64.6,48.4,48.8,48.5)
men_weight <- c(67.8,60,63.4,76,89.4,73.3,67.3,61.3,62.4)
data <-data.frame(group=rep(c("Women","Man"),each=9),weight=c(women_weight,men_weight))
data
with(data,shapiro.test(weight[group=="Man"]))
with(data,shapiro.test(weight[group=="Women"]))

ftest <- var.test(weight~group,data=data)
ftest
ftest$p.value

res <- t.test(women_weight,men_weight,var.equal = TRUE)
res

#Exercise 1
Clevelanders <- rnorm(n=50,mean=250,sd=75)
NY <- rnorm(n=50,mean=300,sd=80)
data <- data.frame(group=rep(c("Clevelanders","New Yokers"),each=50),spending=c(Clevelanders,NY))
data
with(data,shapiro.test(spending[group=="Clevelanders"]))
with(data,shapiro.test(spending[group=="New Yokers"]))
ftest <- var.test(spending~group,data=data)
ftest
ftest$p.value

res<- t.test(Clevelanders,NY,var.equal = TRUE)
res

#Exercise 2
data <- datarium::genderweight
data
summary(data$weight[data$group=="F"])
summary(data$weight[data$group=="M"])
menW <- data$weight[data$group=="M"]
womenW <- data$weight[data$group=="F"]
boxplot(menW,womenW,main="Men and Women weight",col="orange",border="brown",horizontal=TRUE,xlab="Weight")
with(data,shapiro.test(data$weight[group=="M"]))
with(data,shapiro.test(data$weight[group=="F"]))
ftest<- var.test(data$weight~data$group,data=data)
ftest
ftest$p.value
res <- t.test(menW,womenW,var.equal = FALSE)
res

#Paired tests
pre_Treatment <- c(rnorm(2000,mean = 150,sd=10))
post_Treatments <- c(rnorm(2000,mean=144,sd=9))
ftest <- var.test(pre_Treatment,post_Treatments)
ftest
ftest$p.value
t.test(pre_Treatment,post_Treatments,paired = TRUE,var.equal = FALSE,alternative = "greater")

#Exercise 2
before <- c(200.1,190.9,192.7,213,241.4,196.9,172.2,185.5,205.2,193.7)
after <-c(392.9,393.2,345.1,393,434,427.9,422,383.9,392.3,352.2)
diff <- before-after
shapiro.test(diff)
ftest <- var.test(before,after)
ftest
t.test(before,after,paired=TRUE,var.equal = TRUE,alternative = "less")

#Exercise 1
datarium::mice2
before <- datarium::mice2$before
after <- datarium::mice2$after
boxplot(before,after,col="orange",border="brown",horizontal = TRUE,xlab="weight")
diff <- before-after
shapiro.test(diff)
#normal
ftest<- var.test(before,after)
ftest
#variance are equal
t.test(before,after,paired=TRUE,var.equal=TRUE,alternative="less")

#Exercise 2
preTest <- c(85,85,78,78,92,94,91,85,72,97,84,85,99,80,90,88,95,90,96,89)
posTest<- c(84,88,88,90,92,93,91,85,80,93,97,100,93,91,90,87,94,83,92,95)
diff<- preTest-posTest
shapiro.test(diff)
ftest <- var.test(preTest,posTest)
ftest
ftest$p.value
#Variance are equal
t.test(preTest,posTest,paired=TRUE,var.equal = TRUE,alternative="less")
t.test(preTest,posTest,paired=TRUE,var.equal = TRUE,alternative = "greater")
