skewness <- function(vector){
  
  #Finding the length of a vector
  n <- length(vector);
  
  #Calculating the variance and mean for a given vector
  vec_var  <- var(vector);
  vec_mean <- mean(vector);

  
  #Initializing cubic sum to zero
  cubic_sum = 0 
  
  for (i in 1:n){
    cubic_sum <- cubic_sum + (vector[i] - vec_mean)^3
  }
  skew <- (1 / (n - 2) * cubic_sum) / (vec_var ^ (3/2)) 
  cat("The skewness of your values is:", skew)
}
#_Testing the function_#

#Inputs:
vector <- c(1,5,4,3,7,22)

#Function:
skewness(vector)
