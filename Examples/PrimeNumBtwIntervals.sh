#!/bin/bash

# Function to check if a number is prime
is_prime() {
  local num=$1

  if [ $num -lt 2 ]; then
    return 1  # Not a prime number
  fi

  for ((i = 2; i <= sqrt(num); i++)); do
    if [ $((num % i)) -eq 0 ]; then
      return 1  # Not a prime number
    fi
  done

  return 0  # Prime number
}

# Function to display prime numbers between two intervals
display_primes() {
  local start=$1
  local end=$2

  echo "Prime numbers between $start and $end are:"

  for ((num = start; num <= end; num++)); do
    if is_prime $num; then
      echo -n "$num "
    fi
  done

  echo  # Newline for better formatting
}

# Read intervals from the user
echo "Enter the start of the interval:"
read start_interval

echo "Enter the end of the interval:"
read end_interval

# Call the function to display prime numbers
display_primes $start_interval $end_interval
