setwd("C:/Users/Admin/Downloads")


##import the dataset
data<-read.csv("student_scores.csv",header=TRUE)

##view structure&Summary
str(data)
summary(data)
#check missing values
colSums(is.na(data))

##handling missing values


##option1:remove rows with na
data<-na.omit(data)
##Option2:Replace numeric missing values
data$MathScore[is.na(data$MathScore)] <- mean(data$MathScore, na.rm = TRUE)
data$ScienceScore[is.na(data$ScienceScore)] <- mean(data$ScienceScore, na.rm = TRUE)
data$Attendance[is.na(data$Attendance)] <- mean(data$Attendance, na.rm = TRUE)

##option 3:replace missing age with median&gender with mode
data$Age[is.na(data$Age)] <- median(data$Age, na.rm = TRUE) 
mode_gender <- names(sort(table(data$Gender), decreasing = TRUE))[1]
data$Gender[data$Gender == ""] <- NA
data$Gender[is.na(data$Gender)] <- mode_gender

#Encoding Categorical Variables
data$Gender <- factor(data$Gender, levels = c("Male", "Female"), labels = c(1, 2))

#Export Cleaned Dataset
write.csv(data, "cleaned_student_scores.csv", row.names = FALSE)

#view the data for output
View(data)


