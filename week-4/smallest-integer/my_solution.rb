# Smallest Integer

# I worked on this challenge [by myself].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin
 INPUT: Obtain a collection of numbers

  CREATE a container object that contains the first number in the collection

  IF collection is empty THEN
    return nil
  ELSE for each number in the collection determine if that number <= the first number in the collection. Then
      if true then that number will then be the first number in the collection
      continue to examine each number in the collection until you reach the end
  END IF

 OUTPUT: Return the smallest number in the collection
=end

# First Solution Below
=begin
def smallest_integer(list_of_nums)

  smallest_integer = list_of_nums[0]

      if smallest_integer == nil
          return nil
      else list_of_nums.each do |number|
            if number <= smallest_integer
                smallest_integer = number
            end
          end
          return smallest_integer
      end
end
=end

# Refactored solution
def smallest_integer(list_of_nums)
  list_of_nums.sort!
  return list_of_nums[0]
end