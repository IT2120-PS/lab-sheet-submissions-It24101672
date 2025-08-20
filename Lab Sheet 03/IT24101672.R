setwd("D:\\SLIIT\\year 2 sem1\\PS\\LAB Submision\\lab 3")
getwd()

#Import the data set
student_data <- read.csv("C:\\Users\\CYBORG\\Downloads\\Lab 03-20250820\\Exercise.csv", header = TRUE)

# 2. Summary statistics for X1 (Age)
summary(student_data$X1)

# Histogram for X1 (Age)
hist(student_data$X1,
     main = "Histogram of Age (X1)",
     xlab = "Age",
     ylab = "Frequency",
     col = "lightblue",
     border = "black")


#Create a bar chart for “X2” (Gender).
gender_counts <- table(student_data$X2)
barplot(gender_counts,
        names.arg = c("Male", "Female"),
        col = "lightgreen",
        main = "Bar Chart of Gender (X2)",
        xlab = "Gender",
        ylab = "Count")

table(student_data$X2)


# Calculate mean age by accommodation type
accommodation_means <- tapply(student_data$X1, student_data$X3, mean)

# Bar chart of average age per accommodation type
barplot(accommodation_means,
        names.arg = c("Type 1", "Type 2", "Type 3"),
        col = "lightcoral",
        main = "Average Age by Accommodation Type",
        xlab = "Accommodation Type",
        ylab = "Average Age")

# View numerical results
accommodation_means

