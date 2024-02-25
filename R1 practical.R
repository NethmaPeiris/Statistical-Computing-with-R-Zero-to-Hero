4+8
5*14
7/4
4+5+3
4^3
4+5*3
(4+5)*3
4+3^2
(4+3)^2
4^0.25
16^0.25
16^(1/4)
8^(1/3)
((435.4*3.56)/(34+3)^2)^(1/3)

#Built in functions in R
x<-2.5
x
y<-3*exp(x)
y
x<-3*exp(x)
x

#Data structures in R
c(1,2,3)

c("Amal","kamal","Nimal")

c(42,"Statistics",TRUE)

c(42,TRUE)

n1 <- c(42,TRUE)
people <- c("Amal","Nimal","Kasun")
length(n1)
length(people)

c(1,2,3)+c(4,5,6)
n1<- c(1,2,3)
n2<- c(5,2,-3)
c(1,2,3)*c(1,3,3)
c(12,12,12)/n1
n1<- n1+n2
n1
n2
n3<- n1+n2
n3
n4<- n1*n2
n4
a<-c(1,1)
b<-c(0,0)
c(a,b,a)
objects()
rm(a)
rm(list=objects())
objects()

#regular sequence
1:10
10:1
2*1:10
1:10+1:20
1:10-1

#precedence of sequence
seq(1,10)
seq(to=10,from=1)
seq(1,10,by=0.5)
seq(1,10,by=0.25)
seq(1,10,length=19)
seq(1,10,length=19,by=0.25)
rep(1,times=10)
rep(1:3,each=3)
c(rep(seq(1,9,2),3),c(1,2,3),42,2:4)

#vectors
marks<- c(23,45,67,89,43,67,21,55)
marks[2]
marks[2:4]
marks[dim=c(2,4,5)]
