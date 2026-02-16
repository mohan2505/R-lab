# Set the Working Directory
setwd("C:/Users/Admin/Downloads")

# Read the Dataset
df <- read.csv("Advertising (1).csv")

# View the data
View(df)

# View the structure of the data
str(df)

# Checking missing values
colSums(is.na(df))

