# Concatenate Two Arrays
=begin

INPUT: Obtain two collections of values

If both collections are empty THEN
    return the empty collection
else add collection one + collection two THEN
    return the combined collections
END IF
OUTPUT: Combine the two collections of words into one
=end

# I worked on this challenge [by myself].


# Your Solution Below

=begin
def array_concat(array_1, array_2)

    if (array_1 == nil ) && (array_2 == nil)
       return nil
    else
      combined_array = array_1 + array_2
      return combined_array
    end

end
=end

def array_concat(array_1, array_2)

  combined_array = array_1 + array_2
  return combined_array

end