# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution

=begin
include Enumerable
def mode (arrays)
  most_frequent = Hash.new(0)
  arrays.each { |arrays| most_frequent[arrays] += 1}
  p most_frequent.sort_by { |key, value| value }

end
=end

  include Enumerable
def mode (arrays)
  most_frequent = Hash.new(0)
  p most_frequent.sort_by { |key, value| value }
  arrays.each { |arrays| most_frequent[arrays] += 1}
end





mode(["apple", "orange", "apple"])

# 3. Refactored Solution




# 4. Reflection