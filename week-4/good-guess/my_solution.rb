# Good Guess

=begin
  Input: Obtain a integer value

  IF integer value == 42 THEN
    return true
  ElSE integer value is not 42 THEN
    return false
  END IF
  Output: Return true if the integer value is equal to 42. Otherwise return false.
=end

#Create a method called good_guess? that accepts an integer value and returns true if the input is equal to 42 and false otherwise.
# I worked on this challenge [by myself].


# Your Solution Below

def good_guess?(number)
  number = number.to_i

  if (number == 42)
    return true
  else
    return false
  end

end