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
