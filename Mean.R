mean_numeric <- function(x){
  #Setting initial sum to zero
  sum = 0;
  
  #Looping over the entire length of the array
  for (i in 1:length(x)){
    sum = sum + x[i]
  }
  #Returning the mean
  cat("The mean of your vector is:", mean, "\n")

    
} 

#_Testing the function_#

#Input:
x = c(1,2,3,4)

#Function:
mean_numeric(x)
