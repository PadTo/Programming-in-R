diagonal_element_sum <- function(matrix){
  
  #Initializing sum to zero
  sum = 0
  
  #If it's a square matrix:
  if (nrow(matrix) == ncol(matrix)){
    for (i in 1:nrow(matrix)){
      sum = sum + matrix[i,i]
    }
    return(sum)
  }
  
  #If not
  else{
    print("You need to provide a square matrix!")
    return (-1)
  }
  
}

#_Testing the function_#

#Inputs:
mat = matrix(c(1,2,3,4), nrow = 2, ncol = 2)
print(length(mat))

#Function:
diagonal_element_sum(mat)
