# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

=begin

INPUT: Obtain a collection of values, the minium size the array length can be, and a optional contianer object called value which is set to a default of nil

Create a empty collection object called padded array.
Create a empty container object called pushed values

If min_size of the array is less than or equal to the current array size THEN
    return the array
Elsif the size of the array is less than the min_size THEN
    pushed_values =  min_size - array.length
    pushed_values.times {pushed_values << value}
End IF

    return pushed values

OUPUT: Return a new collection object whose length is at least equal to the minium size
=end


# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

=begin
# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size || min_size == 0
    p array
  elsif array.length < min_size
    push_obj = min_size - array.length
    push_obj.times {array.push(value)}
    p array
  end
end

def pad(array, min_size, value = nil) #non-destructive

 padded_array = []
 padded_array = padded_array << array

  if array.length >= min_size || min_size == 0
    return padded_array.flatten
  elsif array.length < min_size
    push_obj = min_size - array.length
    push_obj.times { padded_array.push(value) }
    return padded_array.flatten
  end
end

my_array = [1,2,3,1,2,3]


pad(my_array, 2, 'apple')
=end

def pad!(array, min_size, value = nil)

  if min_size <= array.length
      return array
  elsif array.length < min_size
      push_values = min_size - array.length
      push_values.times { array << value}
      return array
  end

end

def pad(array, min_size, value = nil)
  p array
  padded_array = []
  padded_array = padded_array << array

  if min_size <= array.length
      return array
  elsif array.length <= min_size
      push_values = min_size - array.length
      push_values.times { padded_array << value}
      p padded_array.flatten
  end
end

pad!([1,2,3], 5, "Apple")
pad([4,5,6], 6, "string")
# 3. Refactored Solution



# 4. Reflection

