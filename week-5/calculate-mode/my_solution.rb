# Calculate the mode Pairing Challenge

# I worked on this challenge [with: Monique ]

# I spent [1] day on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# 0. Pseudocode
=begin
INPUT: Obtain a container object with a collection of values
    IF all values are unique THEN
        return the container object with all the values inside of it
    IF there is only one most frequent value THEN
        return the container object with the most frequenct value
    IF there are multiple frequent values THEN
        return the container object with a collection of most frequenct values
    END IF
OUTPUT: Return a container object with the most frequent value
=end
#1. define method -Mode
#2. create array
#3. method takes objects, strings, or integers
#4. if all values are unique return array
#5. most frequent value(s) returned

# What is the input?
#Obtain a container object with a collection of integers or words
# What is the output? (i.e. What should the code return?)
#return a container object with the most frequent value found in the collection
# What are the steps needed to solve the problem?

# 1. Initial Solution

def mode (arrays)
  most_frequent = Hash.new(0)
  arrays.each {|i| most_frequent[i] += 1}
  mode_arrays = []
  most_frequent.each do |k,v|
    most_frequent_values = most_frequent.values.max
    if v == most_frequent_values
      mode_arrays << k
    end
  end
p mode_arrays.sort
end



# 3. Refactored Solution
def mode (arrays)
    frequent_value = []
    most_frequent = Hash.new(0)
    arrays.each { |array| most_frequent[array] += 1 }
    most_frequent_values = most_frequent.values.max
    most_frequent.select! { |key, value| frequent_value << key  if value == most_frequent_values }
    frequent_value
end

# 4. Reflection

=begin
Which data structure did you and your pair decide to implement and why?
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
What issues/successes did you run into when translating your pseudocode to code?
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

Which data structure did you and your pair decide to implement and why?
We decided to use a hash.
The data that we were trying to hold: frequency of a value in a collection would be easier to store and access in a hash.
By using a hash we converted each value in the array into a key.
Then we assigned the frequency of the key to a value.

Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? What issues/successes did you run into when translating your pseudocode to code?
From the start we knew that we wanted to convert the array into a Hash.
So we immediately created a empty hash with a default value.
We iterated over the array and stored each value as hash.
We got stuck right there for a while.
We couldn't figure out how to return the key with the max value, and convert the current data structure back into an array.
We came back to it the next day and realized that:
1.) We didn't have a variable that stored the max value
2.) We also need to create a empty array that we could place the key associated with the most frequent value

Once we added those two things to our solution we were able to compare each value to the most frequent value, capture those key value pairs then place the keys into a empty array.

I think we struggled for a while because our pseudocode could have been stronger.
We were so busy throwing Ruby methods at it that it didn't occur to us that maybe the reason we couldn't solve it was becaue we didn't understand the problem fully.
Later on after we had solved the challenge I came back and refactored our pseudo code.
It helped expose were our issues stemmed from.

What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
Originally we iteratated over the hash using each.
While each worked perfectly fine using it made our original solution very verbose.
For our refacted solution we decided to use select! because we only cared about keeping the key/value pairs with the most frequent values.
=end
