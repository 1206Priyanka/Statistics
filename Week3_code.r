# Exercise 1

# Our data
seplength <- iris[,1]
sepwidth <- iris[,2]
petlength <- iris[,3]
petwidth <- iris[,4]
species <- iris[,5]

# The Mean
mean(seplength)
mean(sepwidth)
mean(petlength)
mean(petwidth)

mean(iris[,1])
mean(iris[,2]))
mean(iris[,3]))
mean(iris[,4]))

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

# Empirical Density Plots
plot(density(seplength), col="purple", main="Density of Sepal Length")
plot(density(sepwidth), col="darkgreen", main="Density of Sepal Width")
plot(density(petlength), col="magenta", main="Density of Petal Length")
plot(density(petwidth), col="darkcyan", main="Density of Petal Width")

# Empirical Cumulative Distribution Plots
plot(ecdf(seplength), main="Empirical Cumulative Distribution of Sepal Length", col="purple")
plot(ecdf(sepwidth), main="Empirical Cumulative Distribution of Sepal Width", col="green")
plot(ecdf(petlength), main="Empirical Cumulative Distribution of Petal Length", col="magenta")
plot(ecdf(petwidth), main="Empirical Cumulative Distribution of Petal Width", col="cyan")

# Histogram Plots (with density of each variable)
hist(seplength, freq = FALSE, main = "Histogram of Sepal Length", col="purple")
lines(density(seplength), main = "Histogram of Sepal Length", col="hotpink")
hist(sepwidth, freq = FALSE, main = "Histogram of Sepal Width", col="green")
lines(density(sepwidth), main = "Histogram of Sepal Width", col="darkgreen")
hist(petlength, freq = FALSE, main = "Histogram Petal Length", col="magenta")
lines(density(petlength), main = "Histogram of Petal Length", col="brown")
hist(petwidth, freq = FALSE, main = "Histogram of Petal Width", col="cyan")
lines(density(petwidth), main = "Histogram of Petal Width", col="blue")

# QQ Plots (to determine whether each variable is normally distributed)
qqnorm(seplength, col="purple")
qqnorm(sepwidth, col="darkgreen")
qqnorm(petlength, col="darkmagenta")
qqnorm(petwidth, col="darkcyan")

# Boxplots
boxplot(seplength, main="Boxplot of Length of Sepal", col="purple", horizontal=TRUE)
boxplot(sepwidth, main="Boxplot of Width of Sepal", col="green", horizontal=TRUE)
boxplot(petlength, main="Boxplot of Length of Petal", col="magenta", horizontal=TRUE)
boxplot(petwidth, main="Boxplot of Width of Petal", col="cyan", horizontal=TRUE)


boxplot(seplength~species, main="Boxplot of Length of Sepal", col="purple", horizontal=TRUE)
boxplot(sepwidth~species, main="Boxplot of Width of Sepal", col="green", horizontal=TRUE)
boxplot(petlength~species, main="Boxplot of Length of Petal", col="magenta", horizontal=TRUE)
boxplot(petwidth~species, main="Boxplot of Width of Petal", col="cyan", horizontal=TRUE)


# Creating dataframes for each species, and values for each of the four variables per species
datasetosa <- subset(iris, Species == "setosa")
dataversicolor <- subset(iris, Species == "versicolor")
datavirginica <- subset(iris, Species == "virginica")

seplength1 <- datasetosa[,1]
sepwidth1 <- datasetosa[,2]
petlength1 <- datasetosa[,3]
petwidth1 <- datasetosa[,4]

seplength2 <- dataversicolor[,1]
sepwidth2 <- dataversicolor[,2]
petlength2 <- dataversicolor[,3]
petwidth2 <- dataversicolor[,4]

seplength3 <- datavirginica[,1]
sepwidth3 <- datavirginica[,2]
petlength3 <- datavirginica[,3]
petwidth3 <- datavirginica[,4]

# Boxplots for the "Setosa" Species
boxplot(seplength1, main="Boxplot of Sepal Length of the Setosa Species", col="purple", horizontal=TRUE)
boxplot(sepwidth1, main="Boxplot of Sepal Width of the Setosa Species", col="green", horizontal=TRUE)
boxplot(petlength1, main="Boxplot of Petal Length of the Setosa Species", col="magenta", horizontal=TRUE)
boxplot(petwidth1, main="Boxplot of Petal Width of the Setosa Species", col="cyan", horizontal=TRUE)

# Boxplots for the "Versicolor" Species
boxplot(seplength2, main="Boxplot of Sepal Length of the Versicolor Species", col="purple", horizontal=TRUE)
boxplot(sepwidth2, main="Boxplot of Sepal Width of the Versicolor Species", col="green", horizontal=TRUE)
boxplot(petlength2, main="Boxplot of Petal Length of the Versicolor Species", col="magenta", horizontal=TRUE)
boxplot(petwidth2, main="Boxplot of Petal Width of the Versicolor Species", col="cyan", horizontal=TRUE)

# Boxplots for the "Virginica" Species
boxplot(seplength3, main="Boxplot of Sepal Length of the Virginica Species", col="purple", horizontal=TRUE)
boxplot(sepwidth3, main="Boxplot of Sepal Width of the Virginica Species", col="green", horizontal=TRUE)
boxplot(petlength3, main="Boxplot of Petal Length of the Virginica Species", col="magenta", horizontal=TRUE)
boxplot(petwidth3, main="Boxplot of Petal Width of the Virginica Species", col="cyan", horizontal=TRUE)



# All observations that have Sepal length greater than or equal to 5
dataA <- subset(iris, Sepal.Length >= 5)


pie(c(nrow(dataA[dataA[,5]=="setosa",]), nrow(dataA[dataA[,5]=="versicolor",]), nrow(dataA[dataA[,5]=="virginica",]))))

lbls <- c("Setosa", "Versicolor", "Virginica")
pie(piedataA, labels = lbls, main="Percentages of Species with Sepal Length greater than or equal to 5")

clrs <- c("purple", "magenta", "lightpink")
pie(piedataA, labels = lbls, main="Percentages of Species with Sepal Length greater than or equal to 5", col=clrs)



# All observations that have sepal length greater than or equal to 5, and sepal width less than 3
dataB <- subset(iris, Sepal.Length >= 5 & Sepal.Width < 3)

barplot(c(nrow(dataB[dataB[,5]=="setosa",]), nrow(dataB[dataB[,5]=="versicolor",]), nrow(dataB[dataB[,5]=="virginica",]))))


# Bar Chart of the data for each species
barplot(bardataB, legend.text = lbls, col=clrs, xlab = "Species", ylab = "number of flowers", main="Comparison of flowers with sepal length greater than or equal to 5 and sepal width less than 3 between each species")


# Scatterplot between sepal length and sepal width
plot(seplength, sepwidth)
plot(seplength, sepwidth, xlab = "Sepal Length", ylab = "Sepal Width", main = "Scatterplot of Sepal Length and Sepal Width", col = species)
legend(x = 4.4, y = 4.3, legend = lbls, col = c("black", "red", "green"), pch = 1)

# Creating several lines of best fit to see any correlation
lines(lowess(seplength, sepwidth), col = "orange")
lines(lowess(seplength[iris[,5]=="setosa"], sepwidth[iris[,5]=="setosa"]), col = "black")
lines(lowess(seplength[iris[,5]=="versicolor"], sepwidth[iris[,5]=="versicolor"]), col = "red")
lines(lowess(seplength[iris[,5]=="virginica"], sepwidth[iris[,5]=="virginica"]), col = "green")






# Scatterplot between petal length and petal width
plot(petlength, petwidth, xlab = "Petal Length", ylab = "Petal Width", main = "Scatterplot of Petal Length and Petal Width", col = species)
legend(x = 1, y = 2.5, legend = lbls, col = c("black", "red", "green"), pch = 1)

# Creating several lines of best fit to see any correlation
lines(lowess(petlength, petwidth), col = "orange")
lines(lowess(petlength[iris[,5]=="setosa"], petwidth[iris[,5]=="setosa"]), col = "black")
lines(lowess(petlength[iris[,5]=="versicolor"], petwidth[iris[,5]=="versicolor"]), col = "red")
lines(lowess(petlength[iris[,5]=="virginica"], petwidth[iris[,5]=="virginica"]), col = "green")







# Exercise 11 
rbinom(200, 10, 0.4)

# Exercise 12
pbinom(3, 10, 0.4)
pbinom(2, 10, 0.4, lower.tail = FALSE)
pbinom(9, 10, 0.4) - pbinom(6, 10, 0.4)

# Execise 13
qbinom(0.55,10,0.4)






#Exercise 14
n=100
dfr= 10
# draw random samples
z<-rnorm(n)
ch <- rchisq(n, df=dfr)
#create the ratio
et<-z/sqrt(ch/dfr)
# sequence to evaluate density
s<-seq(-5, 5, 0.001)
# plot the density
plot(s, dt(s, df=dfr))
# plot the empirical density
lines(density(et), col="red")


#MSE example
n=10000
p=seq(0,1, 0.001)
first=p*(1-p)/n
second= ((n-16)*p*(1-p) +4)/(n+4)^2
plot(p, first)
lines(p, second, col="red")



# For exercise 17 
# Code to create the sample means from Poisson distribution
nsam<-1000
size<-100
lambda<-10
pmean<-rep(0, nsam)
for(i in 1:nsam)
{
  pmean[i]<-mean(rpois(size, lambda))
}
