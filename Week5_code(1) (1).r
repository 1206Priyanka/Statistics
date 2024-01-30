#  Let's use abalone dataset
library(lawstat)
library(EnvStats)
library(TeachingDemos)

# Step 1: (Hypothesis) H0: .... vs HA: ..... 
# Step 2: Find the test statistic
# Step 3: p-value: (in class we discuss CR) 
# Step 4: Decision:  (Reject H0 or Do not Reject H0)
# Step 5: Conclusion: There is (not) statistically significant evidence that (.... the height of shells is less than 0.15...) 


abalone<-read.table("C:/MyDatasets/Labs/abalone.txt", sep=",")

# Test if there is evidence that the height of the shells is less than 0.15
# First we need to check normality
shapiro.test(abalone[,4])  # reject normality

# Reject so we check symmetry
symmetry.test(abalone[,4])   # do not reject symmetricity
wilcox.test(abalone[,4], mu=0.15, alternative = "less")


# Test if there is evidence that the height of the infant shells is less than 0.15
shapiro.test(abalone[abalone[,1]=="I",4])  # reject normality

# Reject so we check symmetry
symmetry.test(abalone[abalone[,1]=="I",4])  # reject symmetry

oneSamplePermutationTest(abalone[abalone[,1]=="I",4], mu=0.15, alternative="less")

# too messy output... so to get just the p-value
oneSamplePermutationTest(abalone[abalone[,1]=="I",4], mu=0.15, alternative="less")$p.value



# what would have happened if we could assume normality 
t.test(abalone[,4], mu=0.15, alternative = "less")


# Assuming normality of the whole weight test if the variance  of the whole weight is different than 0.25
sigma.test(abalone[,5], sigma=sqrt(0.25))


# Test if the proportion of males that have diameter more than 0.25 is equal to 0.95
dim(abalone[ abalone[,1]=="M", ]) #gives you 1528 males students

dim(abalone[ abalone[,1]=="M" & abalone[,3]>0.25, ]) #gives you 1474 males with diameter more than 0.25

# We can do the test
binom.test(1474, 1528, p=0.95)

# we can also use the approximation
prop.test(1474, 1528, p=0.95)


