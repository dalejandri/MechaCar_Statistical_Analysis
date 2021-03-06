# MechaCar_Statistical_Analysis

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/1.PNG" /></p>

## Deliverable 1: Linear Regression to Predict MPG 

### Deliverable 1 Instructions

The MechaCar_mpg.csv dataset contains mpg test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. Multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected for each vehicle. Using your knowledge of R, you’ll design a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. T

## Linear Regression to Predict MPG

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/2.PNG" alt="Multiple Linear Regression Model" /></p>
<p align="center">Multiple Linear Regression Model</p>


- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?

vehicle_length and ground_clearance have a significant impact on MPG consumption, they are non-random variables. This assumption is based on the their p-values that statistically is less that the significance level of 0.05 (2.60e-12 and 5.21e-08 respectively).

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/3.PNG" /></p>

The intercept is statistically significant, meaning that there might be other variables not included in our regression that have impact on the MPG consumption.


- Is the slope of the linear model considered to be zero? Why or why not?

The slope of the linear model cannot be considered zero due to resulted the p-value of 5.35e-11. Therefore we can reject the null hypothesis (meaning there is a definite, consequential relationship between the variables)

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, this linear model shows a Multiple R-squared of 0.7149, which is around of 71% percent explained truthfully by the variables/coefficients, therefore is a good model to predict MPG consumption of the prototypes effectively. 
However only two of the variables proved to be non-random, this probably is just not be good enough and there might be other variables that we should take into account to obtain a more successful prediction.

## Deliverable 2: Create Visualizations for the Trip Analysis

The MechaCar Suspension_Coil.csv dataset contains the results from multiple production lots. In this dataset, the weight capacities of multiple suspension coils were tested to determine if the manufacturing process is consistent across production lots. 
Create a summary statistics table to show:

- The suspension coil’s PSI continuous variable across all manufacturing lots
- The following PSI metrics for each lot: mean, median, variance, and standard deviation.

The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?

The overall metrics for the Total Summary Data frame shows that the suspension coils lots are within the specifications by not exceeding the 100 pounds per square inch threshold.

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/4.PNG" /></p>
<p align="center">total_summary dataframe</p>


However, looking at individual lots we can observe that lot 3's variance is ~170.286 which exceeds 100 PSI, therefore out of range of MechaCar specifications.
Further analysis within lot 3 needs to be performed to discriminate manufacturer, production dates & outliers probably caused by poor quality control.

<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/5.PNG" /></p>
<p align="center">lot_summary dataframe</p>

### Deliverable 3: T-Tests on Suspension Coils

Perform t-tests to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

t-tests display the significance level to determine wheter we can or cannot we reject the null hypothesis, in this case that the suspension coil mean equals 1500 PSI for the manufacturing lots as a whole and/or individually.

#### P-Value for all lots:
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/6.PNG" /></p>
<p align="center">P-Value for all lots is 0.06 which is above our significance level of 0.05 - Do not reject null hypothesis</p>

#### t-test for manufacturing lot 1:
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/7.PNG" /></p>
<p align="center">t-test for manufacturing lot 1 with a p-value of 1 - Do not reject null hypothesis</p>

#### t-test for manufacturing lot 2:
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/8.PNG" /></p>
<p align="center">t-test for manufacturing lot 2 with a p-value of 0.6072 - Do not reject null hypothesis</p>

#### t-test for manufacturing lot 3:
<p align="center"><img class="centerImage" src="https://github.com/dalejandri/MechaCar_Statistical_Analysis/blob/main/Resources/9.PNG" /></p>
<p align="center">t-test for manufacturing lot 3 with a p-value of 0.04168 - Reject null hypothesis</p>

## Deliverable 4: Design a Study Comparing the MechaCar to the Competition

## Study Design: MechaCar vs Competition.
Write a short description of a statistical study that can quantify how the MechaCar performs against the competition. In your study design, think critically about what metrics would be of interest to a consumer: for a few examples, cost, city or highway fuel efficiency, horse power, maintenance cost, or safety rating.

- What metric or metrics are you going to test?

Vehicle Safety Ratings. Nowadays, vehicle safety is one of the key factors that customers that in the market when considering acquiring a vehicle.
We can help MechaCar prototypes to produce Safety Ratings to help their consumers to make smart decisions about safety when purchasing a vehicle.


- What is the null hypothesis or alternative hypothesis?

Null hypothesis: MechaCar prototypes perform just as equal of have an inferior performance as the competition in Vehicle Safety Ratings.
Alternate hypothesis: MechaCar prototypes outperform the competition in Vehicle Safety Ratings.


- What statistical test would you use to test the hypothesis? And why?

NHTSA's Safety Ratings for example measure safety ratings by OVERALL RATING, FRONTAL CRASH, SIDE CRASH and ROLLOVER therefore we would use Analysis of Variance (ANOVA) to measure statistical differences between the means of three or more independent groups.

- What data is needed to run the statistical test?

We would need datasets with detailed information for example from the National Highway Traffic Safety Administration (NHTSA) with the requiered Vehicle Safety Ratings to measure against MechaCar prototypes measurements.
