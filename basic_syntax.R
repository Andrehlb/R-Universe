# This is a basic R script file displayed to demonstrate the basic syntax of R.

# Variables are assigned using the assignment operator '<-' or '='

x <- 10
name <- "André"
print(paste("The x value is:", x))
print(paste("My name is:", name))

# Arithmetic operators are the same as in other languages

sum <- x + 2
print(paste("The sum of x and 2 is:", sum))

# Conditional statements are the same as in other languages

if (x > 5) {
    print("x is grather than 5")
} else {
    print("X is less than 5")
}

# Loops are the same as in other languages, using the 'for' and 'while' keywords

print("Loop with for: ")
for (i in 1:5) {
    print(i)
}

print ("Loop with while: ")
i <- 1
while (i <= 5) {
    print(i)
    i <- i + 1
}

# Functions are defined using the 'function' keyword

my_function <- function(a, b) {
    return (a + b)
}

result <- my_function(3, 4)
print(paste("The result of the function is: ", result))