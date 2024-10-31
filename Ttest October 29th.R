# Author: Savion Brown, October 29th 2024, Purpose: Calculate T-test

# Create 2 variables/groups x and y
x = rnorm(10)
y = rnorm(10)

# Plot x and y variables to check if they follow a normal distibution 

pts = seq(-4.5,4.5, length=100)

# Create Plot 
plot(pts,dt(pts,df=9),col='red',type='l')

# Adding Lines to plot
lines(density(x), col='black')
lines(density(y), col='blue')

# Make variable for ttest
ttest = t.test(x,y)

# Run ttest
ttest

OUTPUT:

Welch Two Sample t-test

data:  x and y
t = -1.3486, df = 15.342, p-value = 0.197
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -1.4858777  0.3328786
sample estimates:
 mean of x  mean of y 
-0.1668370  0.4096625 
