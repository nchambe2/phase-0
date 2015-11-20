# Numbers to Commas Solo Challenge

# I spent [4] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

=begin

INPUT: Obtain a positive number

Create a container object called string_number
Inside of the container object store the conversion of the number to a string

IF the length of the number is < 4
        return the number
ELSE IF number is greater than or equal to 4 AND less than or equal to 6 THEN
        count from the last item in the area three spots back
        add a comma
        return the string_number with the newly added commas
ELSE IF number is greater than or equal to 7 AND less than or equal to 8 THEN
        count from the last item in the area three spots back
        add a comma
        count three more spots back THEN
        add another comman
        return the string_number with the newly added commas
END IF

OUTPUT: Return a comman seperated string

=end

# 1. Initial Solution
#begin

def separate_comma(number)
  number = number.to_s
  add_comma = []
  add_another_comma = []

    if number.length < 4
         return number
    elsif number.length >= 4 && number.length <= 6
          reverse_string = number.reverse
          1.times do
            add_comma = reverse_string[2] + ","
          end
          reverse_string[2] = add_comma
        return reverse_string.reverse
    elsif number.length >= 7 && number.length <=8
          reverse_string = number.reverse
          2.times do
            add_comma = reverse_string[2] + ","
            add_another_comma = reverse_string[5] + ","
          end
          reverse_string[2] = add_comma
          reverse_string[6] = add_another_comma
        return reverse_string.reverse
    end
end

# 2. Refactored Solution
def separate_comma(number)
  number = number.to_s

    if number.length < 4
        number
    elsif number.length <= 6
        number.insert(-4, ",")
    elsif number.length <= 8
        number.insert(-4, ",") && number.insert(-8, ",")
    end
end


# 3. Reflection
=begin
So I really over thought this problem.
I started out with very vague pseudcode.
Which meant that I was trying to solve a problem that I didn't fully understand.

So I looked at the specs more,and realized that there was a pattern in terms of comma position and number length.

When I noticed that I went back and re-pseudocoded my solution.

I broke the problem down into three different conditional expressions.

The first conditional branch was to return the original array if the length of the number was less than 4.

The second conditional branch add one comma to numbers between 4 and 6.

Finally, the last conditional branch added two commas to numbers between 7 and 8.
I find pseudo coding helpful because it helps me determine where my failure points are. If I pseudocode first and can't solve the problem then I know I don't understand it.

I initally reversed my string, iterated through the reversed string, added a comma(s), pushed the number with a comma into the array, then returned the reversed string.

I used the insert method for my refactored solution. I tried to stray away from methods that were to cryptic. Instead, choosing one that decreased the length of my code, but didn't sacrifice readability.

I do think that my code is more readable. I took out the explicit returns, shortened my conditional statements, and used a built in Ruby method to replace having to reverse my string and iterate through it to place the comma.

=end
