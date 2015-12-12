# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
Obtain an array of values

IF the value in the array is a multiple of 3 THEN
     replace the value with the string "Fizz"
     return the new array
ELSE IF the value in the array is a multiple of 5 THEN
    replace the value with the string "Buzz"
    return the new array
ELSE IF the value in the array is a multiple of 15 THEN
    replace the value with the string "FizzBuzz"
    return the new array
END IF
=end
# Initial Solution

def super_fizzbuzz(array)
    array.map! do |num|
      if (num % 3 == 0 && num % 5 == 0 && num % 15 == 0)
         "FizzBuzz"
      elsif (num % 3 == 0)
         "Fizz"
      elsif (num % 5 == 0)
        "Buzz"
      else
       num
      end
    end
    array
end


# Refactored Solution

def super_fizzbuzz(array)
    array.map! do |num|
        divisible_by_three = num.modulo(3) == 0
        divisible_by_five = num.modulo(5) == 0
        divisible_by_fifteen = num.modulo(15) == 0
        case
           when (divisible_by_fifteen && divisible_by_three && divisible_by_fifteen) then "FizzBuzz"
           when (divisible_by_three) then "Fizz"
           when (divisible_by_five) then "Buzz"
           else num
        end
    end
end






# Reflection