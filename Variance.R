variance <- function(matrix,column){
  
  #_Stopping Conditions_#
  
  #Check that the column exists in the matrix
  if (column <= 0 || column > ncol(matrix)){
    stop("The specified column does not exist")
  }
  
  #Check if matrix has more than 1 row
  if (nrow(matrix) <= 1){
    stop("Matrix has to have more than 1 row!")
  }
  
  
  #Setting the squared sum to 0
  sq_sum <- 0
  #Finding the mean of the given column
  mat_mean = mean(matrix[,column])

  
  #Calculating the variance
  for (n in 1:nrow(matrix)){
    sq_sum = sq_sum + (matrix[n,column] - mat_mean)^2
  }
  var = sq_sum / (n - 1)
  cat("The variance of column", column, "is:", var, "\n")

  
} 

#_Testing the function_#

#Inputs:
mat = matrix(c(1,2,3,4),nrow = 2,ncol = 2)
column = 2

#Function:
variance(mat,column)

      