library(dplyr)
MechaCar_1 <- read.csv("MechaCar_mpg.csv")

lin <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, MechaCar_1)

summary(lin)