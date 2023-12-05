#!/bin/bash

# Assigning Strings
string1='Hello, World!'
name='Alice'
string2="Hello, $name!"

# String Concatenation
string3="$string1 $string2"
echo "Concatenated string: $string3"

# String Length
length=${#string3}
echo "Length of the string: $length"

# Substring Extraction
substring=${string3:6:5} 
# 6: It specifies the starting index from where the substring extraction begins
# 5: It specifies the length of the substring to extract
echo "Substring: $substring"

# Searching in a String
if [[ $string1 == *World* ]]; then
  echo "Substring found in string1"
fi

# Replacing Substrings
new_string="${string1/Hello/Hi}"
echo "New string: $new_string"

# String Comparison
if [ "$string1" == "$string2" ]; then
  echo "Strings are equal"
else
  echo "Strings are not equal"
fi

# Case-Insensitive String Comparison
if [ "${string1,,}" == "${string2,,}" ]; then
  echo "Case-insensitive comparison: Strings are equal"
fi
