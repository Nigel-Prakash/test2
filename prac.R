g <- "My First List"
h <- c(25, 26, 18, 39)
j <- matrix(1:10, nrow=5)
k <- c("one", "two", "three")
mylist <- list(title=g, ages=h, j, k)
mylist
patientID <- c(1, 2, 3, 4)
age <- c(25, 34, 28, 52)
diabetes <- c("Type1", "Type2", "Type1", "Type1")
status <- c("Poor", "Improved", "Excellent", "Poor")
patientdata <- data.frame(patientID, age, diabetes, status)
patientdata
x<-c(1,2,3,4,5)
y<-c(5,6,7,8,9)
z<-x+y
z
x<-c(2,3,1)
y<-c(1,4,2)
z<-x*y
z
install.packages("geometry")
library(geometry)
dot(x,y)
x<-8
y<-9
z<-x/y
z
x<-c(2,3,1)
y<-c(1,4,2)
z<-x/y
z
M<-matrix(3:14,nrow=4,byrow=TRUE)
print(M)
rownames=c("R1","R2","R3","R4")
colnames=c("C1","C2","C3")
M<-matrix(3:14,nrow=4,byrow=TRUE,dimnames=list(rownames,colnames)
M
x<-c(1,4,2,5,NA,6,3,4)
summary(x)
mean(x)
mean(x,na.rm=TRUE)
x<-c(1,2,11,12,3,4.5,22,NA,6,41,33,13,NA)
x[is.na(x)]<-median(x,na.rm=TRUE)
print(x)

x<-c(1,2,11,12,3,4.5,22,NA,6,41,33,13,NA)
x[is.na(x)]<-mean(x,na.rm=TRUE)
print(x) 
retail <- read.csv("C:\\Users\\Nigel Prakash\\OneDrive\\Desktop\\Trimester 3\\EDA\\Dataset\\Rdata_retail_sales.csv")
retail


library(Amelia)
AmeliaView()
library(mice)
newdata_leadership<-na.omit(leadership)
newdata_leadership

leadership[is.na(leadership$q1)]<-mean(leadership$q1,na.rm=TRUE)
leadership[is.na(leadership$q1)]<-median(leadership$q1,na.rm=TRUE)
leadership

'Hello world'
for (x in 1:10 )
{ print(x)}

x <- 1000L
class(x)
y <- 30+4i
class(y)

x <- 1000L
y <- 55L
z= x+y
z
x <- 1000
y <- 100
class(x)
z= x+y
z
x <-1L
class(x)
a <- as.integer(x)
a
class(a)
x <- as.integer(x)
class(x)
y <- 89
class(y)
y <- as.integer(y)
class(y)


x1 <- x1 <-c(5,7,8,7,2,2,9,4,11,12,9,6)
y1 <- y1 <-c(99,86,87,88,111,103,87,94,78,77,85,86)

# day two, the age and speed of 15 cars:
x2 <- c(2,2,8,1,15,8,12,9,7,3,11,4,7,14,12)
y2 <- c(100,105,84,105,90,99,90,95,94,100,79,112,91,80,85)

plot(x1, y1, main="Observation of Cars", xlab="Car age", ylab="Car speed", col="red", cex=2)
points(x2,y2, col= "purple", cex = 3)
