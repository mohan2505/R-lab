library(ggplot2)
library(readxl)

setwd("C:/Users/Admin/Downloads")

data <- read_excel("BDA.xlsx", sheet = 5, range = "A2:E19")
View(data)

# check names
colnames(data)

# Check number of rows
n <- nrow(data)

df_multi <- data.frame(
  time = rep(data$Years, 3),
  values = c(data$Sales, data$VC, data$FC),
  group = rep(c("Sales", "VC", "FC"), each = n)
)


plot(data$Years, data$Sales,
     main = "Scatter plot of sales over the years: 2007-24",
     xlab = "Years",
     ylab = "Sales in crores of Rupees",
     pch = 19,
     col = "blue")
