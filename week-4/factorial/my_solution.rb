# Factorial

=begin
  INPUT: Obtain a integer

  Create a container called counter that holds the value of integer - 1
  Create a container called number that holds the value of integer

  IF the number is 0 or 1 THEN
      return 1
  ELSE

  WHILE counter >= 1 THEN
      mulitiply the value held in the container number by the counter
      subtract 1 from the counter
  END WHILE

  OUTPUT: Return the product of all integers from one to the the integer obtained in the input.


=end

# I worked on this challenge [with: David Diaz].


# Original Solution Below

=begin
def factorial(number)
  if number == 0
   p 1
  elsif number == 1
   p 1
  else
  counter = (number - 1)
  mult = number
   while counter >= 1
     mult = mult * counter
     counter = counter - 1
   end
  p mult
 end
end
=end

def factorial(integer)
  counter = integer - 1
  number = integer

  if integer == 0 || integer == 1
    return 1
  else
      while counter >= 1
         number = number * counter
         counter -= 1
      end
      return number
  end
end
