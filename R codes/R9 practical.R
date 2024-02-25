i<- 1
while(i <6){
  print(i)
  i=i+1
}

i<-1
while(i<10){
  print(i)
  i=i+1
}

i<-1
total<-0
while(i<=10){
  total=total+i
  i=i+1
}
print(total)

fact<- 1
i<- 1
while(i<=5){
  fact=fact*i
  i=i+1
}
print(fact)

i<- 1
while(i<6){
  print(i)
  i<- i+1
  if(i==4){
    break
  }
}

i<- 1
while(i<6){
  print(i)
  i<-i+1
  if(i==4){
    break
  }
}
for(i in 1:5){
  print(i)
  if(i==3){
    break
  }
}

i<- 0
while(i<5){
  i=i+1
  if(i==3){
    next
  }
  print(i)
}
i<-1
while(i<=5){
  if(i==3){
    i=i+1
    next
  }
  print(i)
  i=i+1
}
i<-0
while(i<=5){
  if(i==3){
    next
    i=i+1
  }
  print(i+1)
  i=i+1
  
}

dice <- 1
while(dice <= 6){
  if(dice==6){
    print("Yhatzee")
  }else{
    print("Not Yhatzee")
  }
  dice<- dice+1
}

i<-1
while(i<=3){
  for(j in 1:5){
    print(paste("This is iteration i= ",i," and j= ",j))
  }
  i<-i+1
}
for(i in 1:3){
  for(j in 1:5){
    print(paste("This is iteration i= ",i," and j= ",j))
  }
}
i<-1
while(is.numeric(iris[,i])){
  iris[,i]<- iris[,i]+50
  i=i+1
}
head(iris)
i<- 1
while(is.numeric(iris[,i])){
  if(grepl("Width",colnames(iris)[i])){
    iris[,i]<-iris[,i]+50
  }
  i=i+1
}
head(iris)

#repeat 
x<-1
repeat{
  print(x)
  x=x+1
  if(x==6){
    break
  }
}
x<-1
repeat{
  print("Hello world")
  x=x+1
  if(x==6){
    break
  }
}

x<-6
repeat{
  print(x)
  x=x+1
  if(x>10){
    break
  }
}

x<-1
repeat{
  if(x%%2==1){
    print(x)
  }
  x=x+1
  if(x>10){
    break
  }
}
data(iris)
head(iris)

i<-1
repeat{
  if(! is.numeric(iris[,i])){
    break
  }
  iris[,i]<-iris[,i]+100
  i=i+1
}
head(iris)

data(iris)
x<-1
repeat{
  if(! is.numeric(iris[,i])){
    break
  }
  if(grepl("Width",colnames(iris)[i])){
    iris[,i]<- iris[,i]+50
  }
  x=x+1
}
head(iris)
