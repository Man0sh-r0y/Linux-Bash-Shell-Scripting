#!/bin/bash

# Function to find the Greatest Common Divisor (GCD)
gcd() {
  local num1=$1
  local num2=$2

  while [ $num2 -ne 0 ]; do
    remainder=$((num1 % num2))
    num1=$num2
    num2=$remainder
  done

  echo $num1
}

# Function to find the LCM of two numbers
lcm() {
  local num1=$1
  local num2=$2

  local gcd_result=$(gcd $num1 $num2)
  local product=$((num1 * num2))

  local lcm_result=$((product / gcd_result))
  echo $lcm_result
}

# Function to find the LCM of an array of numbers
lcm_array() {
  local numbers=("$@")
  local result=${numbers[0]}

  for ((i = 1; i < ${#numbers[@]}; i++)); do
    result=$(lcm $result ${numbers[i]})
  done

  echo $result
}

# Read numbers from the user
echo "Enter numbers (separated by spaces):"
read -a user_numbers

# Call the function to find the LCM of the entered numbers
result=$(lcm_array "${user_numbers[@]}")

echo "LCM of ${user_numbers[@]} is: $result"
