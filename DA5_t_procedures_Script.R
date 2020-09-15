##########PART 2 START ############################################################################# # R code and explanation for data analysis 5 t procedures. 

# Read in the microbrewSp19.csv dataset
microbeers = read.csv(file.choose(), header = TRUE)

# gives variable names.
names(microbeers) # gives variable names. 

# Make an appropriate visual display for abv. 
# Recall hist() or boxplot()
boxplot(microbeers$abv, main = "Sample of 500 Microbrews ABV", 
     xlab = "Alchohol by Volume", col = "lightblue", horizontal = TRUE)

# Add a title. 
# Add color and other aesthetics if you like. 
# See week 3 lessons or the script from Data Analysis #3. 

# Calculate the mean and standard deviation. mean() and sd()
mean(microbeers$abv)
sd(microbeers$abv)
# Again week 3 lessons or the script from Data Analysis #3. 

# Perform a t test using the t.test() command. 
# The format is t.test(data, mu = mu_0, alternative = "alt") 
# where data is a quantitative variable mu_0 is the hypothesized mean,
# and alt is either "less", "greater" or "two.sided" (default).
# See lesson 27 for an R code example for t.test() or week 5 module R tutorials. 

##########PART 1 END ############################################################################# 

