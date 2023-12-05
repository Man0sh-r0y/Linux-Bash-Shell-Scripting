#!/bin/bash

# Function to check if a year is a leap year
is_leap_year() {
  local year=$1

  if [ $((year % 4)) -eq 0 ] && [ $((year % 100)) -ne 0 ] || [ $((year % 400)) -eq 0 ]; then
    return 0  # Leap year
  else
    return 1  # Not a leap year
  fi
}

# Read a year from the user
echo "Enter a year:"
read user_year

# Call the function to check if it's a leap year
if is_leap_year $user_year; then
  echo "$user_year is a leap year."
else
  echo "$user_year is not a leap year."
fi
