
dataEx3a<-c(18.94,  4.64,  1.80,  2.26,  4.17,  4.93,  4.26, 4.80,  3.70,  2.77,  8.87,  9.82,  5.50,  4.74, 8.67, 3.78,  8.54,  2.62,  2.10,  4.45,  4.02,  3.82,  5.54, 3.13, 
            10.96,  2.73,  2.56,  3.41, 9.56,  3.21)
dataEx3b<-c(8.16,  5.26,  3.80,  4.43,  4.94,  3.73,  4.54, 3.78,  7.40,  23.21,  4.25,  4.44, 12.31, 10.27, 5.39, 2.15,  6.91,  3.80,  8.42, 16.34,  5.36,  5.19,  3.72, 10.27, 
            3.07,  2.76,  1.63,  9.69, 4.29, 13.82)
set.seed(22074213) 
k<-sample(1:length(dataEx3a), 6)
l<-sample(1:length(dataEx3b), 8)
mysample1 <- dataEx3a[k]
mysample2 <- dataEx3b[l]
mysample1
mysample2





dataEx3x<- c(16, 1, 4,  13, 14,  8,  8,  8,  9,  3,  0,  7, 1,  1, 18, 3,  2,  2, 14, 13, 16, 10, 19,  2, 1, 14, 10, 16, 6, 0)
dataEx3y <- c(83, 17, 40, 72, 82, 53, 51, 51, 58, 33, 17, 49, 23, 26, 94, 31, 27, 28, 81, 74, 85, 54, 95, 29, 25, 73, 65, 83, 49, 28)
set.seed(22074213) 
k<-sample(1:length(dataEx3x), 7)
my_x<-dataEx3x[k] # these are the predictor values
my_y<-dataEx3y[k] # these are the corresponding response values

my_x
my_y


# Perform linear regression
regression_model <- lm(my_y ~ my_x)

# Get coefficients
intercept <- coef(regression_model)[1]
slope <- coef(regression_model)[2]

# Display the regression equation
cat("Regression equation: y =", intercept, "+", slope, "x\n")

r_squared <- summary(regression_model)$r.squared

# Display the calculated R-squared
cat("R-squared:", r_squared, "\n")


# Perform ANOVA
anova_table <- anova(regression_model)

# Display the ANOVA table
print(anova_table)
      
      
      
      

# Code for PART B - Exercise 5. 

set.seed(22074213) 
k<-sample(1:392, 300)
mycars<-cars[k,]
# Now use variable "mycars" to do the analysis


data <- read.table("path_to_file/autompgnarm.txt", header = FALSE)

# Set cylinders as a factor variable
data$cylinders <- as.factor(data$cylinders)

# Create boxplots
boxplot(mpg ~ cylinders, data = data)





