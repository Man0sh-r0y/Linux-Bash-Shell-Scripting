#!/bin/bash

# Function to calculate the factorial of a number
factorial() {
  local num=$1
  local result=1

  for ((i = 1; i <= num; i++)); do
    result=$((result * i))
  done

  echo $result
}

# Read a number from the user
echo "Enter a number:"
read user_number

# Call the function to calculate the factorial
result=$(factorial $user_number)

echo "Factorial of $user_number is: $result"
