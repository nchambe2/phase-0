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



# 3. Refactored Solution

def pad!(array, min_size, value = nil)

  if min_size <= array.length
     array
  elsif
    while array.length < min_size
        array << value
    end
  end
   array
end

def pad(array, min_size, value = nil)
  padded_array = []
  padded_array = padded_array << array

  if min_size <= array.length
      padded_array.flatten
  elsif
      while padded_array.flatten.length < min_size
         padded_array << value
      end
  end
   padded_array.flatten
end

# 4. Reflection

=begin
My pair and I were able to successfully break the problem down into small steps.
We solved the destructive padded array method first.
Once we did that we realized all we had to do was copy and paste the destructive array method body, and then make small adjustments to get the second method to work.

A big part of us being able to solve the problem relatively quickly was the fact that our pseudo coding was really fleshed out.
Our initial solution worked, but we did have issues with the padded array method. We realized that we were changing the original array at first.

When we refactored we took out the explicit returns, shortened our conditional statements, and shortened the elsif conditional block by using the while loop.

Our original solution used more fancy Ruby methods then our refactored one. In our first solution we used push and flatten. In our refactored solution we dropped push and subsituted it with <<.

I think our refactored solution is realtively readable. I think we could have refactored it more to get it down to a two line solution. However, I'm not sure how readable that would be.

Destructive methods change the original data structure. While non-descructive methods return a new data structure, and leave the original method in tact.

=end

