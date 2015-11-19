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
=begin
def separate_comma(number)
  number = number.to_s

    if number.length < 4
        return number
    elsif number.length >= 4 && number.length <= 6
         number.insert(-4, ",")
         return number
    elsif number.length >= 7 && number.length <=8
          number.insert(-4, ",") && number.insert(-8, ",")
          return number
    end
end
=end


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
What was your process for breaking the problem down? What different approaches did you consider?
So I really over thought this problem. My first approach was centered on turning the number parameter into a array, reversing the array, adding a comma after index three, undoing the array, and then return the string.

After a hour and half of that I was pretty frustrated. I had to take a break. When I came back I scrapped the whole thing, and started fresh.

One big thing I noticed was that my pseudcode was very vague. Which meant that I was trying to solve a problem that I didn't fully understand.

I looked at the specs more and realized that there was a pattern in terms of comma position and number length.

When I notice that I went back and started pseudo coding. Once I was done with that I implemented my solution. All in all that took me around 30 so minutes.

I find pseudo coding helpful because it helps me determine where my failure points are. If I pseudocode first and can't solve the problem then I know I don't understand it.

I used the insert method for the refactored solution. I tried to stray away from methods that were to cryptic. Instead, choosing one that decreased the lengthen of my code, but didn't sacrifice readability.



I do think that my code is more readable. I took out some of the explicit returns along with shortning some of the conditional statements. I think conditionals can get really messy because it's so hard to follow what's going on.


How did you initially iterate through the data structure?
Do you feel your refactored solution is more readable than your initial solution? Why?
=end
