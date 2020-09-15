##########PART 1 START ############################################################################# 
# R code and explanation for data analysis 6. 
# Read in the Student Informatio Data. Call it st314data. 

st314data= read.csv(file.choose(), header = TRUE)
# gives variable names.

names(st314data) # gives variable names.
levels(st314data$Job) # gives group names for majors

# This analysis compares number of roommates among majors of ST314 students. 
# Follow along with my code. 
# For your own analysis choose either "Salary","GamingHours" or "SocialTime  to compare between majors. 

# Create a side-by-side boxplot to compare number of roommates among the different majors. 
# Expand  the plot if you can't see the group names.
# add a title with main = "title" and a vertical axis title using ylab = "title". 
# color can be added with the rainbow commmand or blues9, or by assigning a specific color like "yellow"

boxplot(Roommates~Job, data = st314data, main = "Comparison between Number of Jobs and Number of Roommates 
        for ST314 Students", ylab = "Number of roommmates", xlab = "Jobs", col = rainbow(5))

# Find the mean, sd and group sizes using the aggregate command. 
# aggregate splits the quantitative variable by the categorical variable groups then performs the command specified. 
aggregate(Roommates~Job, data =st314data, mean)
aggregate(Roommates~Job, data =st314data, sd)
aggregate(Roommates~Job, data =st314data, length)
aggregate(Roommates~Job, data =st314data, var)

# Perform a single factor ANOVA F test to compare the means using the aov() command. 
# call the output something. I like to call it "mod". Then take the summary() of this object to get the ANOVA table.  
mod = aov(Roommates~GamingHours,data =st314data)
summary(mod)

# If the single factor ANOVA test indicates a difference in means, 
# perform a multiple comparisons procedure to see which means differ significantly. 
# Use the TukeysHSD() command with your object from the aov() command. For this example this is called "mod".  
TukeyHSD(mod, conf.level = 0.90)

#Check out this "cool" Multiple COmparisons Plot. 
plot(TukeyHSD(mod, conf.level = 0.90), col = "blue")

######### YOUR TURN!!!! ###################################################################################
#Choose "Jobs", "GamingHours" or "SocialTime"  and compare it among majors. 
#You can do this by simply changing Roommates (and only Roommates) in each line of code above. 
