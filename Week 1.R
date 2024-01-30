library(datasets)

seplength <- iris[,1]
sepwidth <- iris[,2]
petlength <- iris[,3]
petwidth <- iris[,4]
species <- iris[,5]


mean(seplength)
mean(sepwidth)
mean(petlength)
mean(petwidth)

mean(iris[,1])
mean(iris[,2])
mean(iris[,3])
mean(iris[,4])

# The Median
median(seplength)
median(sepwidth)
median(petlength)
median(petwidth)

# The Five Point Summary
quantile(seplength)
quantile(sepwidth)
quantile(petlength)
quantile(petwidth)

# The Variance
var(seplength)
var(sepwidth)
var(petlength)
var(petwidth)

# The Standard Deviation
sd(seplength)
sd(sepwidth)
sd(petlength)
sd(petwidth)

# The Range
range(seplength)
range(sepwidth)
range(petlength)
range(petwidth)

# The Inter-quartile Range (IQR)
IQR(seplength)
IQR(sepwidth)
IQR(petlength)
IQR(petwidth)


#Empirical density
plot(density(seplength), main="Empirical seplength")
plot(density(sepwidth), main="Empirical sepwidth")
plot(density(petlength), main="Empirical petlength")
plot(density(petwidth), main="Empirical petwidth")

#Empirical cumulative distribution
plot(ecdf(seplength), main="Empirical cumulative distribution")
plot(ecdf(sepwidth), main="Empirical cumulative distribution")
plot(ecdf(petlength), main="Empirical cumulative distribution")
plot(ecdf(petwidth), main="Empirical cumulative distribution")


#histo and denity
hist(seplength, freq=FALSE)
lines(density(seplength), main = "Histogram of seplength", col="green")

hist(sepwidth, freq=FALSE)
lines(density(sepwidth), main = "Histogram of sepwidth", col="green")

hist(petlength, freq=FALSE)
lines(density(petlength), main = "Histogram of petlength", col="green")

hist(petwidth, freq=FALSE)
lines(density(petwidth), main = "Histogram of petwidth", col="green")


#QQ plot
qqplot(seplength, main="QQplot for seplength")
qqplot(sepwidth, main="QQplot for sepwidth")
qqplot(petlength, main="QQplot for petlength")
qqplot(petwidth, main="QQplot for petwidth")

