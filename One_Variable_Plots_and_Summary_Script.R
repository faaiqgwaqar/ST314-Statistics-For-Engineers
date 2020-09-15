############# Getting a Data File into R ##############################
# Download the data set St314SISSp19.csv from Canvas to your computer.
# Don't change anything about the dataset. 
# Simply download and save to familiar location.
# Upload Dataset using the read.csv() command below. 
# file.choose() will open a search window for you to select the file.
# Note your data is called cardata.population

st314data = read.csv(file.choose(), header = TRUE)

# Look at the names of the variables in the data with names()

names(st314data)

# Look at the first six rows of data with head()

head(st314data)

# Look at the size of the dataset with nrow()
# n is the number of rows or students in the sample
n = nrow(st314data)
n

# Choose a categorical variable to make a table of counts and a bar chart. 
# To choose a variable from the dataset
# dataset$variable, $ tells R "use this variable from this dataset".
# Example: st314data$SubjectPreffered 
# Choose a different categorical variable for your analysis!

table(st314data$Phone)
barplot(table(st314data$Phone), 
        main = "Phones Used by ST314 Spring Students",
        col = c("green","red","grey","orange"))


# Choose a quantitative variable to visualize. 
# To choose a variable from the dataset
# call the dataset followed by $ and the variable name 
# Example: st314data$Email

# Choose a different quantiative variable for your analysis!

# Make a histogram of your variable of interest 
# Use the hist() command and define the variable from the dataset. 
# dataset$variable, $ tells R "use this variable from this dataset". 

hist(st314data$CreditHours)

# The basic histogram is ugly. Should add a title and some color. 
# Add a title with main = " Title" 
# Add x axis or y axis labels, xlab = " xlabel", ylab = "ylabel" 
# Add color with col = "blue" (or "red" or "orange" etc...)
# More graphical options can be explored at help(hist)

hist(st314data$CreditHours, 
     main = "ST314 Spring 2019 Students: Credit Hour Count", 
     xlab = "Number of Credit Hours Taken", 
     col = "dodgerblue")


# Now create a boxplot. 
# Should add a title and some color. 
# Add a title with main = " Title" 
# Add x axis or y axis labels, xlab = " xlabel", ylab = "ylabel" 
# Add color with col = "blue" (or "red" or "orange" etc...)
# Graphical options are the essentially the same as histogram. 
# More graphical options can be explored at help(boxplot)

boxplot(st314data$CreditHours, 
     main = "ST314 Spring 2019 Students: Credit Hour Count", 
     xlab = "Number of Credit Hours Taken", 
     col = "dodgerblue", horizontal = TRUE)

# This plot is vertical. 
#Make is horizontal by adding , horizontal = TRUE) 

boxplot(st314data$Email, 
        main = "ST314 Spring 2019 Students: Email Count", 
        xlab = "Number of emails over 24 hour period", 
        col = "dodgerblue", horizontal = TRUE)

# Calculate the summary statistics for your chosen variable. 

# Calculate the "Five Number Summary" and the mean with summary()
summary(st314data$CreditHours)

# Calculate the Sample Standard Deviation sd()
sd(st314data$Email)


###########################################################
## PART II: Take a Simple Random Sample ###################

# Call the random sample YourRandomSample 
# This code randomly samples 10 rows from the entire st314data data frame. 

YourRandomSample = st314data[sample(1:length(st314data),10),]

# Now to pull your quantitative variable you need
# YourRandomSample$Email
# Don't use Email... use the same variable you chose in part I. 
# Use the mean() and sd() commands and hist() or boxplot()
# Now you need to write your own code! ;)
mean(YourRandomSample$CreditHours)
sd(YourRandomSample$CreditHours)

boxplot(YourRandomSample$CreditHours, 
        main = "ST314 Spring 2019 Students: Sample Credit Count", 
        xlab = "Number of Credit Hours Taken", 
        col = "dodgerblue", horizontal = TRUE)
