z<-12
z
class(z)
z<- c(12,FALSE)
class(z)
m <- c(10,13, 15, 33) 
n <- c(13, 22, 88, 110)
rbind(m,n)
z <- list(22, "a", "c", FALSE)
z[[2]]
z <- 10:40 
y <- 3
z+y
x <- c(117, 114, 14, 15, 113, 112, 110) 
x[x>100]<-14
x
hw1 = read.csv('hw1_data.csv')
names(hw1)
hw1[c(1:12),]
nrow(hw1)
tail(hw1,8)
hw1[112,] 
hw1[42,] 
hw1[82,]
sub1 = subset(hw1, is.na(Ozone))
sub2 = subset(hw1, is.na(Solar.R))
sub3 = subset(hw1, is.na(Wind))
sub4 = subset(hw1, is.na(Temp))
nrow(sub1)
nrow(sub2)
nrow(sub3)
nrow(sub4)
sub5 = subset(hw1, !is.na(Ozone), select = Ozone)
sub6 = subset(hw1, !is.na(Wind), select = Wind)
sub7 = subset(hw1, !is.na(Temp), select = Temp)
apply(sub5, 2, mean)
apply(sub6, 2, mean)
apply(sub7, 2, mean)
sub8=subset(hw1,Ozone>26 & Temp>80,select = Solar.R)
apply(sub8,2,mean)
sub9=subset(hw1,Month==8 | Month==6,select = Temp)
apply(sub9,2,mean)
sub10 = subset(hw1, Month == 5 & !is.na(Ozone), select = Ozone)
apply(sub10, 2, max)


