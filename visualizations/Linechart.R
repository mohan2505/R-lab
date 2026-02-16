# Install and load package
install.packages("readxl")
library(readxl)

# Set working directory
setwd("C:/Users/Admin/Downloads/")

# Read Excel file
data <- read_excel("BDA.xlsx", sheet = 5, range = "A2:E19")
View(data)

# Extract columns
x <- data$Years
y <- data$Sales

# Convert to numeric if needed
x <- as.numeric(x)
y <- as.numeric(y)

# Create line chart
plot(x, y,
     type = "l",
     main = "Operating Performance",
     xlab = "Years",
     ylab = "Sales",
     col = "blue",
     lwd = 2)

# Optional: add points
points(x, y, col = "red", pch = 16)
