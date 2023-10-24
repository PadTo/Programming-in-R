occurence_list <- function(list,value){
  
  #Initializing count to zero
  counter = 0;
  for (i in 1:length(list) ){
    if (list[[i]] == value){
      counter = counter + 1
    }
  }
  cat("Number of occurences: ", counter, "\n")

}

#_Testing the function_#

#Inputs:
list_ = list(Jake = 25, Paul = "New York", City = "New York")
value = "New York"

#Function:
occurence_list(list_,value)
