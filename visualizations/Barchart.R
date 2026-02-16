# Install and load package
install.packages("readxl")
library(readxl)

# Set working directory
setwd("C:/Users/Admin/Downloads/")

# Read Excel file
data <- read_excel("BDA.xlsx", sheet = 4, range = "A1:I19")

# View data
View(data)

# Create counts of regions (categorical data)
counts <- table(data$Region)

# Create bar chart
barplot(counts,
        main = "Bar chart of Regional Counts of Sales",
        xlab = "Regions",
        ylab = "Frequency",
        col = "blue",
        border = "black")
