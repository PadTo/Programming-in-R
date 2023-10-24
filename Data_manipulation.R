data("mtcars")

# Finding the Boolean values for the locations of min and max mpg
min_vec_mpg <- mtcars$mpg == min(mtcars$mpg)
max_vec_mpg <- mtcars$mpg == max(mtcars$mpg)

# Finding the row names based on the Boolean values
l_car <- rownames(mtcars[min_vec_mpg], )
h_car <- rownames(mtcars[max_vec_mpg, ])

# Calculating average weight of cars for each group containing 4,6 or 8 cylinders
tapply(mtcars$wt, mtcars$cyl, mean)
