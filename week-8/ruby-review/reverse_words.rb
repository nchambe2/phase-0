# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
=begin
Obtain a word

split words into an array

iterate through each word
   for every word reverse it

join the array back into a string

return reversed word
=end

# Initial Solution

def reverse_words(words)
  word_array = words.split(" ")
  word_array.map! { |word| word.reverse}.join(" ")
end


# Refactored Solution

def reverse_words(words)
  words.split(" ").map { |word| word.reverse}.join(" ")
end




# Reflection
