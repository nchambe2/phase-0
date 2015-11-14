# Count Between

# I worked on this challenge [by myself].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

=begin
INPUT: Obtain a collection of numbers, a integer lower bound, and a integer upper bound

IF length of collection is 0 THEN
  return 0
IF upper bound < lower bound
  return 0
ELSE
  For each number between the upper and lower bound (including the upper and lower bound)
      create a containter that holds a empty collection
      take each number out of the collection
      compare that number with the lower bound
          IF number is less then lower bound THEN
              don't count it
          IF number is greater than upper bound THEN
              don't count it
          ELSE
            place the remaining numbers in the new collection object THEN
                 count the length of that collection object
          END IF
  END FOR
END IF

OUTPUT: Return the numbers in a collection. Should be ordered by the lower bound first and the upper bound last.

=end

# Your Solution Below

=begin

def count_between(list_of_integers, lower_bound, upper_bound)

  if list_of_integers.length == 0
      return 0
  elsif upper_bound < lower_bound
      return 0
  else
      for num in lower_bound..upper_bound
          count_integer_array = []
          list_of_integers.each do |integer|
             next if integer < lower_bound
             next if integer > upper_bound
              count_integer_array << integer
          end
      end
  end

    return count_integer_array.length

end
=end

def count_between(list_of_integers, lower_bound, upper_bound)
    if (list_of_integers.length == 0) || (upper_bound < lower_bound )
        return 0
    else
        count_integer_array = []
        list_of_integers.each do |integer|
            next if integer < lower_bound
            next if integer > upper_bound
            count_integer_array << integer
        end
    end
      return count_integer_array.length
end
