#!/bin/bash

# Function to reverse a number
reverse_number() {
  local number=$1
  local reversed=0

  while [ $number -gt 0 ]; do
    digit=$((number % 10))
    reversed=$((reversed * 10 + digit))
    number=$((number / 10))
  done

  echo $reversed
}

# Read a number from the user
echo "Enter a number:"
read user_number

# Call the function to reverse the number
reversed_number=$(reverse_number $user_number)

echo "Reversed number: $reversed_number"
