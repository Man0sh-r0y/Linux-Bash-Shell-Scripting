#!/bin/bash

#An Armstrong number of three digits is an integer such that the sum of the cubes of its digits is equal to the number itself. 
#For example, 371 is an Armstrong number since 3**3 + 7**3 + 1**3 = 371.

# Function to calculate the power of a number
power() {
  local base=$1
  local exponent=$2
  local result=1

  for ((i = 1; i <= exponent; i++)); do
    result=$((result * base))
  done

  echo $result
}

# Function to check if a number is an Armstrong number
is_armstrong() {
  local number=$1
  local original_number=$number
  local sum=0
  local digit
  local num_digits=${#number}

  while [ $number -gt 0 ]; do
    digit=$((number % 10))
    sum=$((sum + $(power $digit $num_digits)))
    number=$((number / 10))
  done

  if [ $sum -eq $original_number ]; then
    echo "$original_number is an Armstrong number."
  else
    echo "$original_number is not an Armstrong number."
  fi
}

# Read a number from the user
echo "Enter a number:"
read user_number

# Call the function to check if it's an Armstrong number
is_armstrong $user_number
