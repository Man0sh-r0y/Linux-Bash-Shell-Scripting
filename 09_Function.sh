#!/bin/bash

# Function definition
function my_function() {
  echo "Hello from my_function!"
}

# Calling the function
my_function


# Define a function named greet
function greet() {
    # Accept the name of the person as an argument
    local name=$1
    echo "Hello, $name!"
}

# Call the greet function with an argument
greet "John"

# Function definition with return value
function add_numbers() {
  local num1=$1
  local num2=$2
  local sum=$((num1 + num2))
  return $sum
}

# Calling the function and capturing the return value
add_numbers 5 3
result=$?
echo "The sum is: $result"
