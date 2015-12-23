# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
CREATE a method that takes in a number

CREATE a hash called num to words

SET numbers 0 - 9 to keys
And add the textual equivalent as the value
0: "zero"
1: "one"
2: "two"
etc

ITERATE through each key THEN
  IF the length of num is 1 THEN
      check to see if there is a key eql to the num
      return the value of the key
  ELSE IF the length of num is 2 THEN
      check to see if there is a key eql to the num
      if (key eql "two")
          return twenty
      if (key eql "three")
          return thirty
      if (key eql "five")
          return fifty
      if (key eql eight)
          return eight
      else
      value_of_key + ty
  END IF
tw(enty)
th(irty)
fi(fty)
four(ty)
six(ty)
seven(ty)
nine(ty)
eight(y)

=end

# Initial Solution
def num_to_words(number)
  num_word = nil
  num_to_text ={
    0 => "zero",
    1 => "one",
    2 => "two",
    3 => "three",
    4 => "four",
    5 => "five",
    6 => "six",
    7 => "seven",
    8 => "eight",
    9 => "nine",
    10 => "ten",
    11 => "eleven",
    12 => "twelve",
    13 => "thirteen",
    14 => "fourteen",
    15 => "fifteen",
    16 => "sixteen",
    17
  }

      num_to_text.each_key do  |key|
        if num.to_s.length == 1
            if key == number
                return num_word = num_to_text[key]
            end
        elsif num.to_s.length == 2
            if key == number
               if (num_to_text[key] == "two")
                    return num_word = "twenty"
               elsif  (num_to_text[key] == "three")
                    return num_word = "thirty"
               elsif (num_to_text[key] == "five")
                    return num_word = "fifty"
               elsif (num_to_text[key] == "eight")
                    return num_word = "eighty"
               else
                  return num_word = num_to_text[key] + "ty"
                end
             end
        end
    end

  p num_word

end

num_to_words(0)
num_to_words(1)
num_to_words(2)
num_to_words(3)
num_to_words(4)
num_to_words(5)
num_to_words(6)
num_to_words(7)
num_to_words(8)
num_to_words(9)
num_words(10)



# Refactored Solution






# Reflection

