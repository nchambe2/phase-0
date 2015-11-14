# Largest Integer

# I worked on this challenge [by myself, with: ].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

=begin
INPUT: Obtain a collection of numbers

Create a container object that holds the last number in the collection

IF the collection is empty THEN
  return nil
ELSE take each number from the collection THEN
  compare the number to the last number in the collection
  if the number is >= to the last number in the collection
  return that number
END IF

OUTPUT: Return largest number in array
=end

# Your Solution Below
=begin
def largest_integer(list_of_nums)

    largest_integer = list_of_nums[-1]

    if list_of_nums == nil
        return nil
    else list_of_nums.each do |number|
        if number >= largest_integer
            largest_integer = number
        end
      end
      return largest_integer
    end

end
=end

def largest_integer(list_of_nums)
    list_of_nums.sort!
    p list_of_nums[-1]
end