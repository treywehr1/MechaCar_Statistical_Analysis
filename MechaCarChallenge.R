library(dplyr)

MechaData <- read.csv("MechaCar_mpg.csv", TRUE, ",")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)) #generate summary statistics

suspensionData <- read.csv("Suspension_Coil.csv")

total_summary <- suspensionData %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

lot_summary <- suspensionData %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep') #create summary table with multiple columns

#Perform t test for all lots sample
all_lot_sample <- suspensionData %>% sample_n(50)
t.test(all_lot_sample$PSI, mu=mean(suspensionData$PSI)) # compare lot sample vs population

#Get subsets for lots 1-3
lotOne <- subset(suspensionData, Manufacturing_Lot == "Lot1")
lotTwo <- subset(suspensionData, Manufacturing_Lot == "Lot2")
lotThree <- subset(suspensionData, Manufacturing_Lot == "Lot3")

# compare individual lots
t.test(lotOne$PSI, mu=1500)
t.test(lotTwo$PSI, mu=1500)
t.test(lotThree$PSI, mu=1500)


