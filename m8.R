library(data.table)
library(plyr)

#step 1
#import dataset into R and then find the mean of sex
Student <- read.table("Assignment 6 Dataset.txt", header = TRUE, sep = ",")
sex <- Student$Sex
mean(sex)


#step2
StudentAverage = ddply(Student,"Sex",transform,Grade.Average=mean(Grade))

i_students <- subset(Student, grepl("i", Student$Name, ignore.case=T))

#step3
write.table(i_students, "DataSubset", sep = ",")