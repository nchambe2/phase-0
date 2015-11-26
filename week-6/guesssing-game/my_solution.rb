# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Obtain the answer which is a intger
# Output:
# Steps:
#CREATE a behavior which obtains the guess which is a integer
#    IF guess is higher than the answer THEN
#           return high
#    IF guess is lower than the answer THEN
#         return low
#    IF guess equals the answers THEN
#           return correct
# CREATE a behavior called solved
#     IF the most recent guess was corecct THEN
#         return true
#     IF the most recent guess was wrong THEN
#           return false


# Initial Solution

#class GuessingGame
#  def initialize(answer)
#      @answer = answer
#  end
#
#  def guess(user_guess)
#      @user_guess = user_guess
#
#      too_high = (@user_guess > @answer)
#      too_low = (@user_guess < @answer)
#
#      if (too_high)
#        p :high
#      elsif too_low
#        p :low
#      else
#        p :correct
#      end
#  end
#
#  def solved?
#      if @user_guess == @answer
#        p true
#      else
#        p false
#      end
#  end
#
#end


# Refactored Solution

class GuessingGame
  def initialize(answer)
      @answer = answer
  end

  def guess(user_guess)
      @user_guess = user_guess

     too_low = (@user_guess < @answer)
     eql_too = (@user_guess.eql? @answer)

      if eql_too
        :correct
      elsif too_low
        :low
      else
        :high
      end
  end

  def solved?
    (@user_guess.eql?(@answer) ? true : false)
  end

end

guessing_game = GuessingGame.new(8)
p guessing_game.guess(7)
p guessing_game.guess(9)
p guessing_game.guess(8)
p guessing_game.solved?




# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
All cars have basic characteristics and behaviors in common:
      Characteristics: wheels, doors, windows, trunk, headlights, colors etc.
      Behaviors: drive, park, blow horn, etc.
As you create different instances of cars such as Honda's, Kia's, Toyota's etc. they will all have characteristics that are distinct to them.
In order to keep track of these distinct characteristics you can store them in instance variables.
Your instance methods can then utilize these instance variables to differentate behavior.
Let's say you have a miles per hour instance variable that your instance method drive utilizes.
This information will cause the drive method to perform differently for a Corvette vs. a Honda.
Thinking about instance variables, instance methods, and objects in a real world context helps you to wrap your mind around the concept more easily.

When should you use instance variables? What do they do for you?
You should use instance variables if you want to create multiple instances of an object.
Having these instance variables will allow you to store and retrieve the different attributes associated with each instance.
An additional benefit is that all of your instance methods will have access instance variables within a class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Flow control gives your program the power to make decisions based on comparision.
This ability allows your program to be more interactive vs. static.
I feel that lots of conditional statements within your program can look messy, make it harder for others behind you to refactor it, and cause your program to be too lengthy.
As soon as I got a working solution I knew I wanted to refactor the solved? method to use a ternary statement, and potentially refactor my guess method to use one line if statements.
I ran into a couple of snags with getting the ternary syntax right, but I was able to make it work.
In terms of the one line if statement I didn't  think it added much in terms of readability so I decided against using it.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
This particular challenge was trying to demonstrate the hit to performance that strings pose to your program, and that it's not always necessary to use a string.
In this particular case were just returning correct, high, low, true, or false so using a symbol does not impact readability of your output.

Symbols are immutable and unique. Once a symbol is created they are stored in a symbol table. When your program encounters a symbol it looks it up in memory, and returns it. This is a much faster process than creating a string, having your program find and utilize it, then mark and destroy it.
=end

