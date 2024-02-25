marks
for(i in 1: nrow(marks)){
  total <- sub1[i]+sub2[i]+sub3[i]
  print(total)
}

data(iris)
head(iris)
iris_new <- iris
for( i in 1: ncol(iris_new)){
  if(grepl("Width",colnames(iris_new)[i])){
    iris_new[,i]<-iris_new[,i]+1000
  }
}
head(iris_new)

irisnew1 <- iris
for( i in 1 : ncol(irisnew1)){
  colnames(irisnew1)[i]<-paste0("new",i)
}
head(irisnew1)

mylist <- list(1:5,letters[3:1],"XXX")
mylist

for( i in length(mylist)){
  mylist[[i]]<- rep(mylist[[i]],3)
}
mylist

#multiple plots 
for( i in 1: (ncol(iris)-1)){
  plot(1:nrow(iris),iris[,i])
  Sys.sleep(1)
}
#Example 2
data <- data.frame(x=1:100,
                   y1 = rnorm(100),
                   y2 = rnorm(100),
                   y3 = rnorm(100))
install.packages("ggplot2")
library("ggplot2")
for(i in 2:ncol(data)){
  print(ggplot(data,aes(x=x,y=data[,i]))+geom_point())
  Sys.sleep(2)
}

dice<- 1:6 
for(i in dice){
  if(i==6){
    print(paste("The dice number is ",i," Yahtzee!"))
  }else{
    print(paste("The dice number is ",i," Not Yahtzee!"))
  }
}

team_A <- 1
team_B <- 3
if(team_A >team_B){
  print("Team A will make the playoffs")
}else{
  print("The B will make the playoffs")
}

x<-12
if(x>0){
  print("X is positive number")
}else{
  print("X is negative number")
}

#example
a<- c(5,7,2,9)
ifelse(a%%2==0,"Even","odd")

x<-0
if(x<0){
  print("Negative number")
}else if(x>0){
  print("Positive number")
}else{
  print("Zero")
}

matches <- list(c(2,1),c(5,2),c(6,3))
for(match in matches){
  if(match[1]>match[2]){
    print("win")
  }else{
    print("Lose")
  }
}
#Example 2
matches <- list(c(2,1),c(5,2),c(6,3))
for(match in matches){
  if(match[1]>match[2]){
    print("Win")
    break
  }else{
    print("Lose")
  }
}
x<- 1:5
for( i in length(x)){
  cat(ifelse(x[i]==1,
             yes="If condition was TRUE",
             no="If condition was FALSE"),
      "\n")
}
