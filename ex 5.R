#Descriptive Statistics#

##data

data <- data.frame(
  studentid = c(101, 102, 103, 104, 105),
  age = c(18, 17, 18, 19, 18),
  gender = c("Male", "Female", "Female", "Male", "Female"),
  mathscore = c(78, 85, 92, 88, 75),
  sciencescore = c(88, 91, 95, 89, 84),
  attendance = c(92, 95, 88, 90, 94)
)
#view the data
data
#basic descriptive statistics

#mean
mean(data$mathscore)
mean(data$sciencescore)
mean(data$attendance)

#median
median(data$mathscore)
median(data$sciencescore)
median(data$attendance)
##mode

mode_func<-function(x){
  ux<-unique(x)
  ux[which.max(tabulate(match(x,ux)))]
}
mode_func(data$gender)
##minimum&maximum

min(data$mathscore)
max(data$mathscore)
##range
range(data$mathscore)
diff(range(data$mathscore)) 
##varience&standard deviation
var(data$mathscore)
sd(data$mathscore)

##summary()function
summary(data)

##Group-wise Descriptive Stats (By Gender)

aggregate(mathscore ~ gender, data, mean)
aggregate(sciencescore ~ gender, data, median)

