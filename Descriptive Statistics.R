data <- data.frame(
  StudentID = c(101, 102, 103, 104, 105),
  Age = c(18, 17, 18, 19, 18),
  Gender = c("Male", "Female", "Female", "Male", "Female"),
  MathScore = c(78, 85, 92, 88, 75),
  ScienceScore = c(88, 91, 95, 89, 84),
  Attendance = c(92, 95, 88, 90, 94)
)

# 1. View Dataset

data

# 2. Basic Descriptive Statistics
# Mean

mean(data$MathScore)
mean(data$ScienceScore)
mean(data$Attendance)

# Median

median(data$MathScore)
median(data$ScienceScore)
median(data$Attendance)

# Mode (custom function because R has no built-in mode)

mode_func <- function(x) {
  ux <- unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}

mode_func(data$Gender)

# 3. Minimum & Maximum

min(data$MathScore)
max(data$MathScore)

# 4. Range

range(data$MathScore)
diff(range(data$MathScore))   # numeric range

# 5. Variance & Standard Deviation

var(data$MathScore)
sd(data$MathScore)

# 6. Summary() Function (Very Useful)

summary(data)


# 7. Group-wise Descriptive Stats (By Gender)

install.packages("psych")
library(psych)

aggregate(MathScore ~ Gender, data, mean)
aggregate(ScienceScore ~ Gender, data, median)

