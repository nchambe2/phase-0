# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
INPUT: Obtain a collection of words

CREATE a containter that holds the last word in the collection

IF collection is empty THEN
    return nil
ELSE for each word in the collection THEN
    compare the word length to the last word in the collection
    if the word length is >= then the last word length in the collection
    then that word becomes the last word in the collection

OUTPUT: Return the longest string in the collection

=end


# Your Solution Below
def longest_string(list_of_words)
   longest_string = list_of_words[-1]

    if longest_string == nil
          return nil
    else list_of_words.each do  |word|
          if word.length >= longest_string.length
                longest_string = word
           end
      end

      return longest_string

    end

end