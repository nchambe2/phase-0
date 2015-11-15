# I worked on this challenge [by myself].

=begin
INPUT: Obtain three positive whole numbers

  If the 1st integer, the 2nd integer, and the 3rd integer are equal THEN
    return true
  If two of the three numbers are equal THEN
    return true
  If the first number cubed + second number number cubed == third number cubed THEN
    return true
  ELSE
    return false
  END


Output: Return true if the three numbers given equal to a equilateral triangle, isoceles triangle, or Pythagorean triple. Otherwise return false.
=end

# Your Solution Below

=begin

def valid_triangle?(a,b,c)

  if (a == 0) || (b == 0) || (c == 0)
    return false
  elsif ((a + b) < c) || ((b + c) < a) || ((a + c) < b)
    return false
  elsif (a == b) && (b == c)
    return true
  elsif (a == b) || (b == c) || (a == c)
    return true
  elsif (a > b) && (a > c) && (c**2 + b**2 == a**2)
    return true
  elsif (b > a) && (b > c) && (c**2 + a**2 == b**2)
    return true
  elsif (c > a) && (c > b) && (b**2 + a**2 == c**2)
    return true
  end
end

=end

def valid_triangle?(a,b,c)

  integer_cant_be_zero = (a == 0) || (b == 0) || (c == 0)
  invalid_triangle = ((a + b) < c) || ((b + c) < a) || ((a + c) < b)
  equilateral_triangle = (a == b) && (b == c)
  isoceles_triangle = (a == b) || (b == c) || (a == c)
  c_b_squared_equ_a_squared = (a > b) && (a > c) && (c**2 + b**2 == a**2)
  a_c_squared_equ_b_squared = (b > a) && (b > c) && (c**2 + a**2 == b**2)
  b_a_squared_equ_c_squared = (c > a) && (c > b) && (b**2 + a**2 == c**2)

  if integer_cant_be_zero || invalid_triangle
    return false
  elsif equilateral_triangle || isoceles_triangle
    return true
  elsif c_b_squared_equ_a_squared || a_c_squared_equ_b_squared || b_a_squared_equ_c_squared
    return true
  end

end