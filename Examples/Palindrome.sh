#!/bin/bash

echo "Enter a word:"
read word

# Function to check if a string is a palindrome
is_palindrome() {
  local input=$1
  local reverse=$(echo $input | rev)

  if [ "$input" == "$reverse" ]; then
    echo "$input is a palindrome."
  else
    echo "$input is not a palindrome."
  fi
}

# Check if the entered word is a palindrome
is_palindrome "$word"
