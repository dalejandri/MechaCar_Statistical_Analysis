# Deliverable 1

# Use the library() function to load the dplyr package.
library(dplyr)

# Import and read in the MechaCar_mpg.csv file as a dataframe. 
MechaCar_table <- read.csv(file='Resources/MechaCar_mpg.csv', check.names=F, stringsAsFactors=F)

# Perform linear regression using the lm() function. In the lm() function, pass in all six variables (i.e., columns), 
# and add the created dataframe as the data parameter
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table)

# Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_table))


# Deliverable 2: Create Visualizations for the Trip Analysis

# In your MechaCarChallenge.R Script, import and read in the Suspension_Coil.csv file as a table.

Suspension_Coil_table <- read.csv(file='Resources/Suspension_Coil.csv', check.names=F, stringsAsFactors=F)

# Write an RScript that creates a total_summary dataframe using the summarize() function 
# to get the mean, median, variance, and standard deviation of the suspension coil's PSI column.

total_summary = Suspension_Coil_table %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions 
# to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil's PSI column.

lot_summary = Suspension_Coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))

# Deliverable 3: T-Tests on Suspension Coils

# write three more RScripts in your MechaCarChallenge.R Script using the t.test() 
# function and its subset() argument to determine if the PSI for each manufacturing lot is statistically 
# different from the population mean of 1,500 pounds per square inch.

# All lots t-test
t.test(Suspension_Coil_table$PSI, mu=1500)

# Lot 1 t-test
t.test(subset(Suspension_Coil_table$PSI, Suspension_Coil_table$Manufacturing_Lot == 'Lot1'), mu=1500)

# Lot 2 t-test
t.test(subset(Suspension_Coil_table$PSI, Suspension_Coil_table$Manufacturing_Lot == 'Lot2'), mu=1500)

# Lot 3 t-test
t.test(subset(Suspension_Coil_table$PSI, Suspension_Coil_table$Manufacturing_Lot == 'Lot3'), mu=1500)
