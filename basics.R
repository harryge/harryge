#quick review of R
# 1. numerical scalar
x<-10
X<-11
x;X
# 2. character scalar
y<-"Kenya"
y
# 3. Vectors
z<-c(10,20,30,40)
z
names<-c("yy","Lee","HH")
names
# 4. Matrices
r1<-c(1,2)
r2<-c(3,4)
A<-rbind(r1,r2)
A
t(A)#transpose
solve(A)#inverse
det(A)#determinant
# 5.OLS
clm1<-rep(1,4)
clm2<-seq(1,4)
X<-cbind(clm1,clm2)
y<-c(5,6,13,20)
cor(clm2,y)
plot(clm2,y)
b.hat <-solve(t(X)%*%X)%*%(t(X)%*%y)#%*% denotes matrix multiplication
b.hat
fit1<-lm(y~clm2)
summary(fit1)
plot(y~clm2)
abline(fit1)
