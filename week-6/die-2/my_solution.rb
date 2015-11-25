# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: A container object that has a collection of letters
# Output:Randomly returns one of the letters when the die is rolled
# Steps:

#On initialization of the object
# IF there aren't any labels in the container object THEN
#     return an ArgumentError
# ELSE
#  store the labels in a instance container object
# SET sides equal to the number of labels in the container object
# WHEN you roll the die THEN
#   return a randomly selected letter

# Initial Solution

=begin
class Die
  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Can't be an empty array")
    else
      @labels = labels
    end
  end

  def sides
      @sides = @labels.length
  end

  def roll
     @labels.sample
  end
end
=end



# Refactored Solution

class Die
  attr_reader :labels

  def initialize(labels)
    if labels == []
      raise ArgumentError.new("Can't be an empty array")
    end
      @labels = labels
  end

  def sides
      @sides = @labels.length
  end

  def roll
      @labels.sample
  end
end


# Reflection

=begin

What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?

The biggest difference was that the initial die class was initialized with the number of sides.
So I used attr_reader to create the sides method.
Then I used the rand method to randomly select a number from 1 to the max side for the roll method.

This time around the base logic was pretty much the same.
I have a die, I roll the die, and then I return the side that it landed on.

The difference was that this die used labels instead of numbers. 
In order to find the number of sides of the die I had to count how many lables there were vs. just including the instance variable sides in my method.

I also created a reader method called labels. 
Originally, the sides method acted as a reader method. 
However, in this implemetation it doesn't. 
I thought it would be a good idea to add that if someone wanted to access all of the label values.

What does this exercise teach you about making code that is easily changeable or modifiable?
Rarely ever will you run into a situation where you create a program in the real world, and that's it. 
Programs are always evolving. 
In order to make that evolution process easier it's important to design your classes so that it's easy to refactor or extend.

What new methods did you learn when working on this challenge, if any?
I learned about sample. 
Initially, I tried to use the rand method again. 
It kept failing because I realized that I was trying to use the randomly selected number from 1 through labels.length to access different label values. 
I soon realized that I would have have to change that to 0 through (labels.length - 1). 
However, that still didn't work.
So I stepped back for a little bit, and started researching array methods. 
Once I found sample I realized that I didn't need rand.

What concepts about classes were you able to solidify in this challenge?
I've started reading Practical Object Oriented Design, and I admit I didn't really get it at first(there are still parts I don't get).
She talks a lot about the importance of design in code and maintainability. 
That idea hasn't really played a factor in the programs we've been creating. 
However, having to come back to this piece of code due to a change in how the feature works hammered home the importance of creating clean solutions.
=end
