Author: Pawar; Date: September 12th, 2024; Purpose:
Perform correlation analysis

library(ggpubr)
# calling the library ggpubr

my_data <- mtcars
# making varriable for car data

head(my_data)
# head function previews the first 5 rows of data

dim(my_data)
# dim function shows the size of data like [1] 32 11
# 32 is the amount of rows and 11 is the amount of columns 

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson")

# assigning the variable res to the function cor.test. In this example cor.test has 3 arguments. It is calling the columns wt, and mp. And assinging the method to "person".
res 
# Type in res in console it will show output. 

# The output will look like this >>
	
	Pearson's product-moment correlation

data:  my_data$wt and my_data$mpg
t = -9.559, df = 30, p-value = 1.294e-10
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 -0.9338264 -0.7440872
sample estimates:
       cor 
-0.8676594 
# ^ this value is the correlation. Remeber the closer to -1 or 1 the stronger the correlation is.

# So this means that the weight and miles per gallon have a strong correlation 
#cor = -0.8676594