

# Using iris data

# Discuss multivariate datasets where means are vectors and we define a covariance matrix

cov(iris[,1:4])

# To confirm what  we say
var(iris[,1])
cov(iris[,1],iris[,2])

cor((iris[,1:4]))
cor(iris[,1],iris[,2])



pairs(iris[,1:4])
pairs(iris[,1:4], col=iris[,5])



library(MVA)  # you may need to run install.packages("MVA")




# chiplot for independence
chiplot(iris[,1],iris[,2])
chiplot(iris[,1],iris[,3])



# bivariate boxplot
bvbox(iris[,c(1,2)])



#mvtnorm

library(mvtnorm) # you may need to run install.packages("mvtnorm")

rmvnorm(n=5)
rmvnorm(n=5, rep(0, 5))
rmvnorm(n=5, rep(0, 3))
rmvnorm(n=5, sigma=diag(3))
rmvnorm(n=5, sigma=diag(6))

rmvnorm(n=5, mean=apply(iris[,1:4], 2, mean), sigma=cov(iris[,1:4]))



