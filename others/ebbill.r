
# EB Bill Calculation in R

# Get user inputs
current <- as.numeric(readline("Enter current reading: "));
previous <- as.numeric(readline("Enter previous reading: "));

# Units consumed
units <- current - previous
cat("Units consumed:", units, "\n")

bill <- 0

if (units <= 100) {
  bill <- 0
0
} else if (units <= 200) {
  bill <- (units - 100) * 5

} else if (units <= 300) {
  bill <- (100 * 5) + (units - 200) * 7

} else {
  bill <- (100 * 5) + (100 * 7) + (units - 300) * 10
}

cat("Your Total EB Bill: Rs.", bill, "\n")

