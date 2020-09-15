############### Data Analysis 9 ###################################################

# Upload the dataset SpringRent.csv call it "rentals" 
rentals = read.csv(file.choose(), header = TRUE)

# attach the dataset
attach(rentals)

# Confirm the variable names in the dataset
names(rentals)

#Create a scatterplot matrix of all the varaibles in the rentals dataset
pairs(rentals) #yuck! Too many variables. Let's remove the categorical variables. 

# Create a scatterplot matrix with only the quantitative variables
pairs(rent~rooms+baths+sqrfoot)

# Create a boxplots with only the categorical variables. 
par(mfrow = c(2,2)) # puts 4 plots in one plot 2 by 2. 
boxplot(rent~house, main = "House Indicator and Rent")
boxplot(rent~campusclose, main = "Near Campus and Rent")
boxplot(rent~pets,main = "Pets Allowed and Rent")
boxplot(rent~new, main = "New and Rent")
par(mfrow = c(1,1)) # sets plots back to default 1 by 1.
boxplot(rent~house+campusclose + pets + new)

# Fit the full model with all 7 of the explanatory variables. 
full.model = lm(rent~rooms+baths+sqrfoot+house+campusclose+pets+new)
summary(full.model)

# Perform the basic model selection process described in the data analysis or in the notes. 
# Call your final model final.model
mod = lm(rent ~ rooms + new)
summary(mod)

# Final Model
final.model = lm(rent~ rooms + new)
summary(final.model)

# Check your conditions with a residual plot.
plot(final.model, 1, main= "Residuals")
abline(h = 0, lty = 2)

# Confidence and prediction intervals
predict(final.model, data.frame(rooms = 2, baths = 1, sqrtfoot= 876, house = 0, campusclose = 1, pets = 0, new = 0), interval= "confidence")
predict(final.model, data.frame(rooms = 2, baths = 1, sqrtfoot= 876, house = 0, campusclose = 1, pets = 0, new = 0), interval= "prediction")

mod.2 = lm(rent~rooms)
summary(mod.2)
confint(final.model, level=0.95)
