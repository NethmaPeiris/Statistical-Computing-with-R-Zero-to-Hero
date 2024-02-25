mean(25:82)
sum(41:68)
seq(32,44)
seq(34,44,by=2)

#user define functions
new_function <- function(a,b){
  result<-a*b
  result
}
new_function(2,3)
new_function(4,5)

new.function<- function(a,b,c){
  result<- a*b+c
  result
}
new.function(2,3,1)
new.function(4,5,2)

pow <- function(x,y){
  result <- x^y
  print(paste(x," rasied to the power ",y," is ",result))
}
pow(2,3)
pow(4,5)

x <-c(1,5,4,2,8,6,7,9,10)
mean(x)

mean_funtion <- function(x){
  result<-sum(x)/length(x)
  print(paste("MEAN of given vector is ", result))
}
mean_funtion(x)
x <- rnorm(100,mean=2,sd=1)
x
mean(x)

temp_function <- function(F){
  C=(F-32)*(5/9)
  print(paste("Celcius temperature of given Fahreneit temperature is ",C))
}
temp_function(32)
temp_function(50)

new.function <- function(x){
  m=sum(x)/length(x)
  result <- sum((x-m)^2)
  result
}
new.function(1:10)

#Exercise 2
Name <-c("A1","B1","C1")
sub1 <-c(45,56,78)
sub2 <-c(78,45,90)
sub3 <-c(67,87,43)
marks <- data.frame(sub1,sub2,sub3)
row.names(marks)<-Name
marks

total_marks <- function(x){
  total <- sub1+sub2+sub3
  print(cbind(row.names(marks),total))
}
total_marks(marks)


#loops in R
for(i in 1:5){
  print(i)
}
#Exercise 1
for( i in 1:20){
  print(i)
}
#Exercise 2
for( i in 1:10){
  square=i^2
  print(square)
}

week <- c("Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday")
for(day in week){
  print(day)
}

#Exercise 3
Year <- c("January","February","March","April","May","June","July","August","September","October","November","December")
for(month in Year){
  print(month)
}

#Exercise 4
names <- c("Max","Tina","Lindsey","Anton","Sharon")
for(i in names){
  print(paste(i,nchar(i)))
}

#Example 1
for(i in 1:3){
  for(j in 1:2){
    print(paste("i = ",i," j= ",j))
  }
}

#Example 2
for(i in 1:5){
  for(j in 1:2){
    print(i*j)
  }
}

#Exercise 1
for(i in 0:3){
  for(j in 0:2){
    cat(paste("(",i,",",j,")"),sep="")
  }
  cat(sep="\n")
}

#Example 3
res <- matrix(nrow = 4,ncol = 4)
for(i in 1:nrow(res)){
  for(j in 1:ncol(res)){
    res[i,j]<-i*j
  }
}
print(res)

#if condition in for loop
x<- c(2,5,3,9,8,11,6)
count<-0
for( val in x){
  if(val%%2==0)
    count=count+1
}
print(count)

#break
x<- 1:5
for(i in X){
  if(i==3){
    break
  }
  print(i)
}

x<-1:10
for(i in x){
  if(i>4){
    break
  }
  print(i^2)
}

x<-1:5
for(i in x){
  if(i==2){
    next
  }
  print(i)
}

x<-1:10
for(i in x){
  if(i==1 || i==5|| i==7){
    next
  }
  print(i^2)
}
