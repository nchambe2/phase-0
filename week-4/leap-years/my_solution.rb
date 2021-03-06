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

  divisible_by_four = (year % 4 == 0)
  divisible_by_four_hundred = (year % 400 == 0)
  not_divisible_by_one_hundred = (year % 100 != 0)

  if (divisible_by_four) && (not_divisible_by_one_hundred)
    return true
  elsif (divisible_by_four_hundred)
    return true
  else
    return false
  end

end


