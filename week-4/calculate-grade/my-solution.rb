# Calculate a Grade

=begin
  INPUT: Obtain the average

  IF average is >= 90 THEN
    return a letter grade of A
  IF average is >= 80 THEN
    return a letter grade of B
  IF average is >= 70 THEN
    return a letter grade of C
  IF average is >= 60 THEN
    return a letter grade of D
  IF average is < 60 THEN
    return a letter grade of F
  END IF

  OUTPUT: Return the corresponding letter grade to that average
=end
#get_grade(100)


# I worked on this challenge [with: Mason Pierce].


# Your Solution Below

def get_grade(average)

  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >= 60
    return "D"
  else average < 60
    return "F"
  end
end