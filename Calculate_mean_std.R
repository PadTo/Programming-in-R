calculate_mean_sd <- function(x){
  
  #________________________________________________________________
  #This function returns the mean and standard deviation from a
  #given vector
  
  #Mathematically mean and standard deviation are defined as:
  
  #Mean: sum_of_all_values/number_of_values  -> mean = sum/n
  #Standard Deviation = sqrt(sum(x_i - mean)/n - 1)
  
  
  #Input vectors "x" length must be > 1
  #_______________________________________________________________
  
  
  
  sum = 0;           #Setting initial sum to zero
  n   = length(x)    #Setting the length as a variable
  
  #Stopping condition
  if (n < 1){
    stop("The vector must be longer than 1")
  }
  
  #Looping over the entire length of the array
  for (i in 1:n){
    sum = sum + x[i]
  }
  
  #Finding the mean of a vector
  mean = sum/n
  
  #Setting the squared sum to 0
  sq_sum <- 0
  
  #Calculating the Deviation
  for (j in 1:n){
    sq_sum = sq_sum + (x[j] - mean)^2
  }
  
  SD = sqrt(sq_sum / (n - 1))
  
  mean_std_list = list(Mean = mean,Standard.Deviation = SD );
  return(mean_std_list)

} 

