list_data <- list("Red",c(21,32,11),TRUE,51.23)
list_data
names(list_data)<-c("colour","Vector","Logical","Number")
list_data
list_data[2]
list_data$Vector

#Add new element
list_data[5]<-"New element"
list_data
list_data[4]<-NULL
list_data

list1 <- list(1:10)
list1
list2 <- list(11:20)
list2
merge.list<-c(list1,list2)
merge.list

list1 <- c(1:5)
list2 <- c(10:14)
list1
list2
v1 <- unlist(list1)
v1
v2<- unlist(list2)
result <- v1+v2
result

#Arrays
a1 <- array(1:5,dim=c(1,5))
a1
a2<- array(1:3,dim=c(3,1))
a2

m1 <- array(1:15,dim=c(3,5))
m1

arr <- array(2:13,dim=c(2,3,2))
arr

array1 <- c(5,10,15,20)
array2 <- c(25,30,35,40,45,50,55,60)
final <- array(c(array1,array2),dim=c(4,4,3))
final

final <- array(c(array1,array2),dim=c(4,3,3))
final

final <- array(c(array1,array2),dim=c(3,3,3))
final

#Naming arrays
array1 <- c(9,18)
array2 <- c(27,36)
r.names <- c("Row1","Row2")
c.names <- c("Column1","column2","column3")
m.names = c("Arr1","Arr2")
final <- array(c(array1,array2),dim=c(2,3,2),dimnames=list(r.names,c.names,m.names))
final

a1<- c(1,2,3,4)
a2<- c(5,6,7,8,9)
arr <- array(c(a1,a2),dim=c(3,3,1))
arr

r.names <- c('r1','r2','r3')
c.names <- c('c1','c2','c3')
m.names <- c('first')
arr <- array(c(a1,a2),dim=c(3,3,1),dimnames=list(r.names,c.names,m.names))
arr

arr[1,3,1]
arr[1:2,1:2,1]
arr[,,1]
arr[2,,1]
arr[,2,1]
arr[1,3,1]<-5
arr

#matrices
m1 <- array(1:15,dim=c(3,5))
m1
m2 <- matrix(1:15,3,5)
m2
m2 <- matrix(1:15,nrow=3,ncol=5)
m2

m3 <- 1:15
dim(m3)<-c(3,5)
m3

m3 <- matrix(1:15,nrow=3,ncol=5,byrow=TRUE)
rownames <- c("row1","row2","row3")
colnames <- c("column1","column2","column3","column4","column5")
m3 <- matrix(1:15,nrow=3,ncol=5,dimnames=list(rownames,colnames))
m3

m4 <-cbind(1:3,4:6,7:9)
m4
m5 <- rbind(1:3,4:6)
m5

diag(4)
diag(1:4)

m3
m3[2,3]
m3[,2]
m3[2,]
m3[2,c(1,3)]
diag(m3)
m1
rowSums(m1)
colSums(m1)

m1+m1
m2
m1-m2
3*m1
m1*m2
t(m1)

m3<-matrix(1:6,3,2)
m3
m4<- matrix(1:6,2,3)
m4
m3%*%m4

m6<-matrix(c(1,3,2,1),2,2)
v1 <- c(1,0)
solve(m6,v1)
solve(m6)
solve(m6)%*%v1
solve(m6)
solve(m6,v1)
