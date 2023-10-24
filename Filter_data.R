filter_data <- function(data_frame, column_name, threshold){
  #This function filters rows of a data frame based on a threshold value in a specified column
  #It returns a new data frame containing only rows where the values in the specified column exceed the threshol
  
  #data_frame  -> The input data frame
  #column_name -> The name of the column to be checked against the threshold
  #threshold   -> The value used to filter rows in the specified column
  
  filtered_df <- data_frame[data_frame[[column_name]] > threshold,]
  return(filtered_df)
}
