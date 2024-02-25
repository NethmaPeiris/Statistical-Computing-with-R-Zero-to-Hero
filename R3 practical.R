#data frames
EmpId <- c("A","B","C","D","E")
EmpName <- c("Rick","Dan","Michel","Rayan","Gray")
salary <- c(623.3,515.2,611,729,843.25)

EmpData <- data.frame(EmpName,salary)
EmpData
row.names(EmpData)<-EmpId
EmpData
str(EmpData)
result <- data.frame(EmpData$EmpName,EmpData$salary)
result
result1 <- EmpData[1:3,]
result1
result2 <- EmpData[c(3,5),1:2]
result2

#Expanding data frame
#Add column
EmpData$Dept <- c("IT","Operations","IT","HR","Finance") 
EmpData

#Add row
EmpId <- c("F","G","H")
EmpName <- c("Rasmi","Pranab","Tusar")
salary <- c(578.0,722.5,632.8)
Dept <- c("IT","Operations","Finance")
EmpNewData <- data.frame(EmpName,salary,Dept)
EmpNewData
row.names(EmpNewData) <- EmpId
EmpNewData
EmpFinalData <- rbind(EmpData,EmpNewData)
EmpFinalData

summary(EmpFinalData)
fix(EmpFinalData)

#Exercise
ID <- c("A01","A02","A03","A04","A05","A06","A07","A08","A09","A10")
Gender <-c("M","F","M","M","F","M","F","M","F","F")
Height <-c(86.5,71.8,77.2,84.9,75.4,80.5,92.5,78.5,70.5,85.2)
weight<-c(35,45,56,65,35,30,45,60,52,50)
Students <- data.frame(ID,Gender,weight,Height)

Students
Students$Age <-c(20,19,21,18,17,21,22,19,24,25)
Students
summary(Students)
write.csv(Students,"students.csv")
#Relational and logical expressions in R
x <-5
y <- 16
x<y
x>y
x<=5
y>=20
x!=5

x<- c(2,8,3)
y<- c(6,4,1)
x>y
x<y

X <- c(9,1,5,3,4,10,99)
X[X>5]
X[X>=5]
X[X<4]

x<- c(TRUE,FALSE,0,6)
!x
y<- c(FALSE,TRUE,FALSE,TRUE)
x&y
x&&y
x|y
x||y

x<- c(9,1,5,3,4,10,99)
x[x>3 & x<10]
x[x!=5]
x[x>10 | x<5]

EmpFinalData
EmpFinalData$salary+100
EmpFinalData$salary[EmpFinalData$Dept=="Finance"]
EmpFinalData$EmpName[EmpFinalData$salary<700]
EmpFinalData$EmpName[EmpFinalData$Dept=="IT"&EmpFinalData$salary<700]

#Exercise
Students
Students$Height[Students$Gender=="F"]
Students$Height[Students$Gender=="M"]
Students$ID[Students$Age>20]
Students$ID[Students$Height<40]
Students$ID[Students$Height>75]

fix(EmpFinalData)
EmpFinalData
install.packages("readxl")
install.packages("writexl")
setwd("D:/KDU/Semester 03/Statistical Computing with R/Practicals")
write.csv(EmpFinalData,"EmpFinaData.csv")
EmpFinalData <- read.csv("EmpFinaData.csv")
write.table(EmpFinalData,"EmpFinal.txt",sep="\t",row.names = TRUE,col.names = TRUE)
