# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

=begin
INPUT: Obtain a collection of words

CREATE a containter that holds the first word in the collection

IF collection is empty THEN
    return nil
ELSE for each word in the collection THEN
    compare the word length to the first word in the collection
    if the word length is <= the first word length in the collection
    then that word becomes the first word in the collection

OUTPUT: Return the shortest string in the collection

=end

#Original Solution Below

def shortest_string(list_of_words)

    shortest_string = list_of_words[0]

    if shortest_string == nil
          return nil
    else list_of_words.each do  |word|
          if word.length <= shortest_string.length
                shortest_string = word
           end
      end

      return shortest_string

    end

end


