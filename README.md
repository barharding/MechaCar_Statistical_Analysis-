# MechaCar Statistical Analysis

## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
  - Both Vehicle Length & Ground Clearance p-values shown in **_Figure 1_** show there is a probability that each coefficient contributes a random amount of variance to the linear model at 2.60e-12 and 5.21e-08 respectively.  These low probability values indicate in an counter-intuitive way that that both do have an impact on miles per gallan.

**_Figure 1: Coefficients Summary_**

![Coefficients Summary](/Images/Q1_probability.png)

- Is the slope of the linear model considered to be zero? Why or why not?
  - The slope of the linear model is not considered to be zero given the p-value is 5.35.e-11.  A zero slope would suggest there is no correlation between the independent variables which we know is not true.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
  - Based on an R-squared value of 71.49% this model is effective for predicting MPG almost 72% of the time.  Additional, analysis  with perhaps more or less independent variables would need to be performed to see if this can be increased or not to answer the question if 72% is effective as it may be the best you can do.
  

## Summary Statistics on Suspension Coils

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. 

- Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?
  - The total_summary dataframe shown in **_Figure 2_** indicates that for all suspension coil lots the variance is 62.29356, which is bellow the 100 pounds per square inch.  When the lots are evaluated independently, shown in the lot_summary dataframe in the same figure below there is a problem with Lot 3 which has a variance of 170.286 which is far above the 100 threshold and should be deemed non-compliant and rejected.

**_Figure 2: Deliverable 2 Results_**

![Summary Stats Suspension Coils](/Images/deliverable_2.png)

## T-Tests on Suspension Coils

The results from the 4 t-tests shown in **_figure 4_** shows  there is a statistical difference between the mean of Lot3's sample distribution and the mean of the population distribution. The mean for Lot 3 is 1496.14 which is below the desired 1500.  In addition the p-value is below the 0.05 indicating it is statistically different.  The other t-test are not significant.

**_Figure 4: Deliverable 3 Results_**

![T-Tests on Suspension Coils](/Images/deliverable_3.png)

## Study Design: MechaCar vs Competition


- What metric or metrics are you going to test?
  - test
- What is the null hypothesis or alternative hypothesis?
  - test
- What statistical test would you use to test the hypothesis? And why?
  - test
- What data is needed to run the statistical test?
  - test


2022 marks the return of inflationary prices and fuel is one of the highest rising costs, therefore one of the biggest factors when purchasing a vehicle and selecting between brands is a vehicles fuel efficiency.  A study to determine is lower higher miles per gallon results in high model sales would prove consumer buying habits are changing due to high fuel costs.

In order to perform this study the input data would need to includes sales data for two periods for all comparable models to MechCar's model.  The two period include a low fuel cost period to be compared with a high fuel period. 

Null Hypothesis:: Higher fuel efficiency has no impact on sales results for comparable models
Alternative Hypothesis: Higher fuel efficiency increases sales in comparable models.

