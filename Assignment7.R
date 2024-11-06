# Author: Savion Brown, October 31st Purpose: Calculate T-test

x = rnorm(1000)
y = rnorm(300)

pts = seq(-4.5,4.5, length=100)

plot(pts,dt(pts,df=9),col='red',type='l')

lines(density(x), col='black')
lines(density(y), col='blue')

ttest = t.test(x,y)
ttest

Welch Two Sample t-test

data:  x and y
t = -1.6807, df = 511.85, p-value = 0.09342
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 -0.22868194  0.01780764
sample estimates:
  mean of x   mean of y 
-0.03547911  0.06995803 

