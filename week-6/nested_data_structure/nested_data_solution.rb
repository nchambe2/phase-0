# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 3
# ============================================================

#p array[1][1][2][0]
p array.find { |value| p value }# value.eql?("Fore")}


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 3
# ============================================================

#p hash[:outer][:inner]["almost"][3]
p hash.find { |value| value.eql?("congrats")}
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 2
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
#
#number_array.map! do  |element|
#    if element.kind_of?(Array)
#      element.map! do |inner|
#          inner + 5
#      end
#    else
#       p element + 5
#    end
#end

#p number_array


#refactored solution
flat_num_array = number_array.flatten
p flat_num_array.map { |number| number + 5}


# Bonus:

startup_names = ["bit",["find", "fast", ["optimize", "scope"]]]
#
#startup_names.map do |name|
#    if name.kind_of?(Array)
#      name.map do |nested_name|
#        if nested_name.kind_of?(Array)
#          nested_name.map {|super_nested| p super_nested + 'ly'}
#        else
#          p nested_name + 'ly'
#        end
#      end
#    else
#      p name + 'ly'
#    end
#end


#refactored solution
flat_startup_array = startup_names.flatten
p flat_startup_array.map { |name| name + "ly"}

#Reflection
=begin
What are some general rules you can apply to nested arrays?
Understanding your nested structure.
It's important to know how items are nested within each other.
If you understand those fundamentals then it's easier to access the value you that you want, or iterate over it.

What are some ways you can iterate over nested arrays?
You can use enumerable methods like map, collect, each.

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
In the last two examples they were asking you to iterate through, and make a change to each value within the collection object.
Since it was a global change I used flatten then iterated through the data structure.
I don't think that's a solution that you can always apply.
Depending on what is being asked of you, but I thought this was a great way to do it.
=end