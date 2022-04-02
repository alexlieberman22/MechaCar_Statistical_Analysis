library(dplyr)


MechaCar_1 <- read.csv("MechaCar_mpg.csv")

lin <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, MechaCar_1)
summary(lin)

###

Susp_Coil <- read.csv("Suspension_Coil.csv")

total_summary <- Susp_Coil %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))
lot_summary <- Susp_Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI),Variance = var(PSI), SD = sd(PSI))

###

t.test(Susp_Coil$PSI, mu = 1500)

sub1 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot1')
sub2 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot2')
sub3 <- subset(Susp_Coil, Manufacturing_Lot == 'Lot3')

t.test(sub1$PSI, mu = 1500)
t.test(sub2$PSI, mu = 1500)
t.test(sub3$PSI, mu = 1500)
