# -------------------------------
# R DATA TYPES
# -------------------------------

# Numeric
num_value <- 10.5
print(num_value); print(class(num_value))

# Integer
int_value <- 20L
print(int_value); print(class(int_value))

# Character
char_value <- "Hello R"
print(char_value); print(class(char_value))

# Logical
log_value <- TRUE
print(log_value); print(class(log_value))

# Complex
complex_value <- 3 + 4i
print(complex_value); print(class(complex_value))

# Raw
raw_value <- charToRaw("R")
print(raw_value); print(class(raw_value))


# -------------------------------
# R OBJECT TYPES
# -------------------------------

# Vector (same type elements)
vec <- c(1, 2, 3, 4)
print(vec); print(class(vec))

# List (different types allowed)
my_list <- list(10, "R", TRUE, 3.5)
print(my_list); print(class(my_list))

# Matrix (2D, same type)
mat <- matrix(1:9, nrow = 3, ncol = 3)
print(mat); print(class(mat))

# Array (multi-dimensional)
arr <- array(1:8, dim = c(2, 2, 2))
print(arr); print(class(arr))

# Data Frame (table-like)
df <- data.frame(
  name = c("A", "B", "C"),
  age = c(21, 22, 23)
)
print(df); print(class(df))

# Factor (categorical data)
fac <- factor(c("Male", "Female", "Male"))
print(fac); print(class(fac))
