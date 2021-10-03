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

The slope of the linear model cannot be considered zero due to resulted the p-value of 5.35e-11. Therefore we can reject the null hypothesis.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?

Yes, this linear model shows a Multiple R-squared of 0.7149, which is around of 71% percent explained truthfully by the variables/coefficients, therefore is a good model to predict MPG consumption of the prototypes effectively. 
However only two of the variables proved to be non-random, this probably is just not be good enough and there might be other variables that we should take into account to obtain a more successful prediction.


