fibonacci <- function(n) {
  #----------------------------------------------------------
  # This function generates the first 'n' Fibonacci numbers.
  #
  # Args:
  #     n: The number of Fibonacci numbers to generate.
  #        Must be a positive integer.
  #
  # Returns:
  #     A vector containing the first 'n' Fibonacci numbers.
  #----------------------------------------------------------

  # Stopping Condition
  if (n <= 0) {
    stop("The input integer must be greater than 0")
  }

  if (n == 1) {
    return(0)
  }

  # Starting Values as a Vector
  fib <- c(0, 1)

  for (i in 3:n) {
    fib[i] <- fib[i - 2] + fib[i - 1]
  }

  return(fib[1:n])
}
fibonacci(4)


# Initialize Parameters:

sum <- 0
# Starting sum
fib <- 0
# Starting value for the fib sequence
target <- 1000
# Target sum
counter <- 1
# Starting counter for the while loop


while (sum <= target) {
  # Updating counter by 1
  counter <- counter + 1

  # If else statement to correctly assign Fibonacci sequence values to the array
  if (counter == 2) {
    fib[counter] <- 1
  } else {
    fib[counter] <- fib[counter - 2] + fib[counter - 1]
  }

  sum <- sum + fib[counter]
}
cat("The number of Fibonacci sequence values is", counter - 1, "\n")
cat("The Fibonacci vector for a sum that does not exceed 1000:", fib[1:counter - 1], "\n")
