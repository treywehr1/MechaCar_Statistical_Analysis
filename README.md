# MechaCar_Statistical_Analysis

## Note to Grader
A number of bootcamp students have found that their summary statistics differ from that of the module challenge. We have come to a collective reasoning that we must be working off of a slightly different dataset. Please keep this in mind while grading. Thank you!

## Linear Regression to Predict MPG

 - According to the results, vehicle length and ground clearance (as well as intercept) are statistically unlikely to provide random amounts of variance to the linear model indicating significant impact on prototype MPG.
 
 - The slope of this linear model is not considered to be 0. This is indicated due to the variable's coefficients not equalling zero.
 
 - Since the model's r-sqaured value is calculated at .7149, it is safe to assume that the model will perform well.
 
 ![Imgur](https://imgur.com/KiAEmV3.png)
 
 ![Imgur](https://imgur.com/XMUnlgo.png)

## Summary Statistics on Suspension Coils

Summary statistics ran on the PSI of MechaCar vehicles per manufacturing lot indicate that although the collective suspension coil variance across all 3 lots is less than 100, lot 3 does not individually meet the variance requirements of less than 100 PSI. Lots 1 and 2 do keep their PSI variance under 100.

![Imgur](https://imgur.com/QXJoYJQ.png)

![Imgur](https://imgur.com/RGzHvZF.png)

## T-Tests on Suspension Coils

A T-Test was performed on the data to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch by taking a sample of 50 data points from the full dataset. The results below indicate that for the t-test ran to test the mean of all manufacturing lots against the population mean - a p-value of .4145 was derived. At a significance level of .05, this means that there is a failure to reject the null hypothesis that the true mean is equal to 1498.78.

![Imgur](https://imgur.com/Y6Y6WDy.png)

Next, a t-test was performed on each individual lot against the population mean. It was also determined for the first two lots, with p-values of 1 and .6072 respectively, that the null hypothesis could not be rejected. 

However, for lot 3 and its p-value of .04168; this does sit below a significance level of .05. Therefore, we reject the null hypothesis that the true mean is equal to 1500. 

![Imgur](https://imgur.com/UhGMb4c.png)

## Study Design: MechaCar vs Competition

A study to compare MechaCar versus its competition is suggested in which chi-squared testing is utilized to perform analysis on collected surveys.

We will collect surveys taken that place the surveyed in categories by car type (truck, sedan, coupe, suv, hybrid, etc); they will then answer questions about demographic information and product satisfaction. After we have this information we can perform chi-squared tests on vehicle types against other vehicle types. Specifically, we can acquire statistical evidence and knowledge about what consumers like and don’t like about MechaCar, and who they are demographically relative to consumers of other car types.
