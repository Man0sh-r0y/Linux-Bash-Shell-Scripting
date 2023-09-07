#!/bin/bash

alias dir="ls -ltr | awk '{print \$9}'"

# The command alias dir="ls -ltr | awk '{print \$9}'" creates a shortcut or alias called "dir" in your shell. When you type "dir" in your terminal, it actually runs the following commands:

# ls -ltr: This command lists files and directories in the current directory in a long format (-l) and sorts them by modification time in reverse order (-t). So, the newest files and directories appear at the bottom.
# awk '{print \$9}': After the ls command, the output is passed to awk, which is a text processing tool. It extracts and prints the 9th column from the ls output, which corresponds to the names of files and directories.