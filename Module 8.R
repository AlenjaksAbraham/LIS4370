library(plyr)
require(ISLR)
require(boot)
library(data.table)
require(pryr)

#Step 1
Student_assignment_6 <- read.table("C:/Users/alenm/OneDrive/Documents/LIS4370/Assignment 6 Dataset.txt", header = TRUE, sep = ",")
Student_assignment_6

#the code below is an error because the value is not numerical
sex = Student_assignment_6$Sex
mean(Sex)

mean(Student_assignment_6$Grade[Student_assignment_6$Sex == "Male"])
mean(Student_assignment_6$Grade[Student_assignment_6$Sex == "Female"])


StudentAverage = ddply(Student_assignment_6,"Sex",transform, Grade.Average=mean(Grade))
Student

#Step 2
write.table(StudentAverage, "Students_Gendered_Mean")
write.table(StudentAverage,"Sorted_Average",sep=",")



i_students <- subset(Student_assignment_6, grepl("i", Student_assignment_6$Name, ignore.case=T))
i_students



#Step 3
write.table(i_students,"DataSubset",sep=",")