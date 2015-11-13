# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Were are taking in an array.

# Output: The sum of all the numbers inside of the array.

# Steps to solve the problem.
# Create a method
# Method should take an array of numbers.
# Iterate through array adding numbers
# Return the sum of those numbers

# 1. total initial solution
def total(arrayofnum)
 counter = 0
 sum = 0
 arraylength = arrayofnum.length
   while arraylength > 0
     sum = sum + arrayofnum[counter]
     counter = counter + 1
     arraylength = arraylength - 1
   end
   p sum
end


# 3. total refactored solution


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: an array of strings
# Output: a concatened string
# Steps to solve the problem.
# create a method
# should take a string array
# iterater through the string array
# return the concatened sentence

# 5. sentence_maker initial solution

def sentence_maker(array_of_strings)
  arraylength = array_of_strings.length
  counter = 0
  concatened_string = ""
  while arraylength > 0
    concatened_string = concatened_string + " " + array_of_strings[counter].to_s
    counter = counter + 1
    arraylength = arraylength - 1
  end
   p concatened_string.strip.capitalize + "."
end

# 6. sentence_maker refactored solution