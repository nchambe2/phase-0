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
        divisible_by_three = num.modulo(3).eql? 0
        divisible_by_five = num.modulo(5).eql? 0
        divisible_by_fifteen = num.modulo(15).eql? 0
        case
           when divisible_by_fifteen then "FizzBuzz"
           when divisible_by_three then "Fizz"
           when divisible_by_five then "Buzz"
           else num
        end
    end
end

# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed using case statements.
Previously, I had only used when and then while utilizing case statements
I had never used else statements though.
So I had to look up was that allowable, then figured out how to use it.
Also, having methods call other methods.
What is still confusing to you about Ruby?
In this situation I was unsure if I need to add attr_reader to my class.
Might have to go to office hours to clarify.
What are you going to study to get more prepared for Phase 1?
Hashes, enumerable/enumerators, and working on some extra algorithm problems.
=end
