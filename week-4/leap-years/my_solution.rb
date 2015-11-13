# Leap Years

=begin
Pseudocode

Input: Obtain a year
IF year is evenly divisible by 4 but not evenly divisible by 100 THEN
  print true
IF year is evenly divisible by 400 THEN
  print true
IF year is evenly divisible by 4 and by 100 but not evenly divisible by 400 THEN
  print false
IF year is not evenly divisible by 4 THEN
  print false
ENDIF

Output: Print true IF the year provided is a leap year. Else print false IF the year provided is not a leap year.

=end
# I worked on this challenge [by myself, with: Mason Pierce].


# Your Solution Below

def leap_year?(year)
  year = year.to_i

  if (year % 4 == 0) && (year % 100 != 0)
    return true
  elsif (year % 400 == 0)
    return true
  elsif (year % 4 == 0 && year % 100 == 0) && (year % 400 != 0)
    return false
  else (year % 4 != 0)
    return false
  end

end


