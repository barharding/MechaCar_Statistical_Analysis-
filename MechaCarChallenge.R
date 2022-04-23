library(dplyr)
library(tidyverse)

# Deliverable # 1 Linear Regression to Predict MPG

#Import CSV file

mechacar <- read.csv('Resources/Mechacar_mpg.csv')
head(mechacar)

#Perform linear regression

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mechacar)


#Using the summary() function, determine the p-value and the r-squared value for the linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data =mechacar))


# Deliverable # 2  Create Visualizations for the Trip Analysis

#Import CSV file

susp_coil <- read.csv('Resources/Suspension_Coil.csv')
head(susp_coil)

# Write an RScript that creates a total_summary dataframe using the summarize() function
#to get the mean, median, variance, and standard deviation of the suspension coil's 
#PSI column

Mean= mean(susp_coil$PSI)
Median=median(susp_coil$PSI)
Variance=var(susp_coil$PSI)
SD = sd(susp_coil$PSI)

total_summary <- data.frame(Mean, Median, Variance,SD)
total_summary

# Write an RScript that creates a lot_summary dataframe using the group_by() and the 
#summarize() functions to group each manufacturing lot by the mean, median, variance, 
#and standard deviation of the suspension coil's PSI column.

lot_summary <- susp_coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI) )
lot_summary

# Deliverable # 3  T-Tests on Suspension Coils

# In your MechaCarChallenge.RScript, write an RScript using the t.test() function to determine if the PSI across all manufacturing lots 
#is statistically different from the population mean of 1,500 pounds per square inch.

t.test(susp_coil$PSI,mu=1500)

# Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine 
#if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.

t.test(subset(susp_coil,Manufacturing_Lot =="Lot1")$PSI,mu = 1500)
t.test(subset(susp_coil,Manufacturing_Lot =="Lot2")$PSI,mu = 1500)
t.test(subset(susp_coil,Manufacturing_Lot =="Lot3")$PSI,mu = 1500)






