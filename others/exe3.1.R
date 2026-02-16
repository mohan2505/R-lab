x <- 15
cat("if else")
if (x>10){
  print("X is greater than 10")
} 

if (x%%2 == 1){
  print("X is odd")
} else{
  print("X is even")
}


cat("\n FOR Loops ")

for(i in 1:10){
  cat(i,"\n")
  if(i == 3){
    next
  }
  if(i == 8){
    print("Stopping Loop at 8 using break")
    break
  }
}

num <- 1
while(num<=5){
  print(paste("Number : ",num))
  num<-num+1
}

counter<-1
repeat{
  print(paste("Counter : ",counter))
  counter<-counter+1
  if (counter>4)
    break
}

grade <- "sd"
message<-switch(
  grade,
  "A"="Excellent",
  "C"="ok",
  "unkown"
)
print(paste("Grade",message))

value <- "Text"
result <- tryCatch(
  {
    value + 5
  },
  error = function(e){
    print("Error")
    return(NA)
  }
)
print(paste("Result",result))

v<- c(10,20,30,40)
cat("V = ",v[2])

cat(1:5)

