# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent [1] hour on this challenge.

# 0. Pseudocode

=begin
Input: Obtain number of sides that the dice has
Output: Return the side that the dice landed on when rolled
Steps:
CREATE a blue print for the die class

DEFINE a behavior(initialize) that creates a container object that holds the number of sides a particular instance has

DEFINE a behavior(sides) that returns the number of sides a particular dice has

DEFINE a behavior(roll) that rolls the rice randomly and returns a number between one and the largest side
=end

# 1. Initial Solution

class Die
  def initialize(sides)
    if sides < 1
        raise ArgumentError.new("Sides can't be blank")
    else
       @sides = sides
    end
  end

  def sides
    @sides
  end

  def roll
      rand(1..sides)
  end
end


# 3. Refactored Solution

class Die
  attr_reader :sides

  def initialize(sides)
      if sides < 1
        raise ArgumentError.new("Sides can't be blank")
      end
      @sides = sides
  end

  def roll
      rand(1..@sides)
  end

end








# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
Argument errors are most often caused by using the wrong number of arguments. In this case the ArgumentError is caused by passing a argument that has been deemed invalid.
What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
This challenge I used attribute reader and the random method for the first time. I especially liked using attr_reader to create a getter method. It saves you from writing so much code.
What is a Ruby class?
The easiest way to think of a Ruby class is a blueprint for an object. Within that blueprint you can define objects state(instance variables), and the objects behavior(instance methods).
Why would you use a Ruby class?
You would create a class if you want to create several of a similar type of object.
What is the difference between a local variable and an instance variable?
Local variables scope is limited to the program or method it is defined in. They can be used to store information that is not connected to a particular instance of a class. They written in snake case with lower case letters.

Instance variables scope is limited to the class it is defined in.Instance variables are used to store information about a particular instance of a class. If it is defined within a method body. It can be used by other methods within that class as well. They contain a @ in front of the variable name.

=end