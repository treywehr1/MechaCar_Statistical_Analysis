library(dplyr)

MechaData <- read.csv("MechaCar_mpg.csv", TRUE, ",")

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData) #generate multiple linear regression model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaData)) #generate summary statistics