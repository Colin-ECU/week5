#!/bin/bash
# Create a script named “regexes.sh” and write grep -r 
# statements to search your work for the following patterns:

# Written grep statements below.

# Search for all sed statements
grep -r sed

# All lines that start with the letter m
grep -r "^{mM]"

# All lines that contain three digit numbers
grep -r \d\d\d

# All echo statements with at least three words
grep -r -E "(echo\s+)(\S\w[A-Za-z]+\s){3,}"

# All lines that would make a good password
grep -r -E "^(\S(?=.*[A-Z]|[a-z])|(0-9)|([^A-Za-z0-9])){16,}"


# Received some assistnace from Angelo Papiccio.  Once again I was to the answer
# but his input and explanation were very much appreciated and hence deserves reference for his work. 
# The hours were not in vain and the help welcomed :)
