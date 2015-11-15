# Add it up!

=begin
INPUT: Take a collection of numbers

Create a container object that holds the sum of all the numbers

FOR each number in the collection THEN
  add the current number to the sum
END FOR

OUTPUT: Return the sum of all the numbers inside of that collection
=end

# I worked on this challenge [with: David Diaz].


# 1. total initial solution

=begin
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
=end

# 3. total refactored solution

def total(arrayofnum)

  sum = 0

  arrayofnum.each do |number|
    sum = number + sum
  end

  return sum

end




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!

# Input: Obtain a collection of words


# Steps to solve the problem.
# Create a container object called sentence that holds a empty string
# For each word in the collection THEN
#     add the current word to the sentence cotainer object
# END FOR
#
# OUTPUT: Return a capitalized sentence ending in a period

# 5. sentence_maker initial solution
=begin
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
=end

# 6. sentence_maker refactored solution

def sentence_maker(array_of_strings)


    sentence = ""

    array_of_strings.each do |word|

      sentence = "#{sentence}" + " " + "#{word}"

    end

    return sentence.strip.capitalize + "."

end