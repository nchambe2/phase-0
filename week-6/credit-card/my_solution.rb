# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [with: David Diaz ].
# I spent [2] hours on this challenge.

# Pseudocode
=begin
INPUT: 16 digit number

In the initialize method
IF number is not equal to length of 16 THEN
    raise ArgumentError
Else
set number eql to instance variable
END IF

DOUBLE EVERY OTHER DIGIT
REVERSE the number
For every odd indices double the number

SUM ALL NUMBERS
Break down double digit nums into single digit nums
THEN add all nums
Return sum

REMAINDER_OF_ZERO
If the remainder of the sum divided by 10 is 0 THEN
return true
ELSE
return false
END IF

OUTPUT: Return true if num is valid. Else return false.
=end

# Initial Solution
#class CreditCard
#  def initialize(card_number)
#    if card_number.to_s.length != 16
#      raise ArgumentError.new("Invalid Credit Card Number")
#    end
#    @card_number = card_number
#  end
#
#  def double_every_digit
#    reversed_number = @card_number.to_s.chars.map{|x| x.to_i}.reverse
#
#    reversed_number_doubled = []
#
#    reversed_number = reversed_number.each_with_index do |number, index|
#       if (index % 2) != 0
#         reversed_number_doubled << number * 2
#      else
#         reversed_number_doubled << number
#      end
#    end
#      reversed_number_doubled
#  end
#
#  def sum_all_num
#    reversed_number_doubled = double_every_digit
#    reversed_number_doubled_joined = reversed_number_doubled.join.chars.map{|x| x.to_i}
#    sum = reversed_number_doubled_joined.inject(:+)
#    p sum
#  end
#
#  def check_card
#    sum_of_nums = sum_all_num
#    if sum_of_nums % 10 == 0
#      p true
#    else
#      p false
#    end
#  end
#end

#Refactor Solution

class CreditCard

  def initialize(card_number)

    card_length = card_number.to_s.length

    unless card_length.eql?(16)
        raise ArgumentError.new("Invalid Credit Card Number")
    end

      @card_number = card_number

  end

  def double_every_other_num
    reversed_card_number = @card_number.to_s.chars.map(&:to_i).reverse

    reversed_number_array = []

    reversed_card_number.each_with_index do |number, index|
       index.odd? ? reversed_number_array << number * 2 : reversed_number_array << number
    end

    @card_number = reversed_number_array.reverse
end

  def sum_all_num
    @card_number = @card_number.join.chars.map(&:to_i)
    @card_number = @card_number.inject(:+)
  end

  def check_card
    @card_number % 10 != 0 ? false : true
  end

end


#Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
  We got stuck for awhile in the double_every_other_num method.
  We were using the index method, and it wasn't returning what we expected.
  So we had to debug that for awhile.
  Once we switched to each_with_index the rest of the challenge was easy.

What new methods did you find to help you when you refactored?
  I found a shortcut for writing code blocks for the map and inject methods.
  I felt that it made it more readable.

What concepts or learnings were you able to solidify in this challenge?
  Ironically, I find writing programs in classess easier then just single methods.
  Breaking down the problem into several methods spread out across one class is easier for me to think about.
=end