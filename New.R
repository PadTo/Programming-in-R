empId = c(1, 2, 3, 4)
empName = c("Debi", "Sandeep", "Subham", "Shiba")
numberOfEmp = 4
empList = list(
  "ID" = empId,
  "Names" = empName,
  "Total Staff" = numberOfEmp
)
print(empList)

#Accessing name components using $ command
print(empList$Names[1])


# Define the original array
thisarray <- c(1:24)

# Create a multi-dimensional array
multiarray <- array(thisarray, dim = c(4, 3, 2))

# Print the multi-dimensional array
print(multiarray)

sum_and_print <- function(x,y, verbose = F){
  sum <- x + y
  if (verbose){
    cat("The sum of ", x, " and ", y, " is ", sum)
  }
  return (sum)
}

sum_and_print(1,2,T)


First_function <- function(x) {
  Second_function <- function(y) {
    result <- x * y
    return(result)
  }
  return (Second_function)
}
result_function = First_function(3)
result = result_function(5)
print(result)
