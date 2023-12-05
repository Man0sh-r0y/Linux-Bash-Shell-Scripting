#!/bin/bash

# Function to find all factors of a number
find_factors() {
  local num=$1
  local factors=()

  for ((i = 1; i <= num; i++)); do
    if [ $((num % i)) -eq 0 ]; then
      factors+=($i)
    fi
  done

  echo "${factors[@]}"
}

# Read a number from the user
echo "Enter a natural number:"
read user_number

# Call the function to find factors
result=($(find_factors $user_number))

echo "Factors of $user_number are: ${result[@]}"
