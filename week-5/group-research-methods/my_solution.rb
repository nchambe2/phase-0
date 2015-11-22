# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
=begin
Pseudocode for my_array_modification_method!
INPUT: Obtain an container object that contains a collection of words and integers, and the amount you want to modify the number in the container object by.

FOR each element in the aray
    Ask if the element is a integer
    IF integer Then
        Add thing_to_modify to the integer
        Add the sum of that calculation to the array
    END IF
END FOR
  return container object with modifications

OUTPUT: Return the original container object with the integers inside modified by a certain amount
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Pseudocode for my_hash_modification_method!
INPUT: Obtain a container object with a collection of words and numbers, and the amount you want to modify the number in the container object by

  FOR each value in the the hash
      Update the value by thing_to_modify
      return each key/value pair
  END FOR
OUTPUT: Return the original container object with the integer values modified by a certain amount

=end


def my_array_modification_method!(source, thing_to_modify)
    source.map! do |s|
        if s.is_a? String
             s
        else
            s += thing_to_modify
        end
    end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value | source[key] = (value += thing_to_modify) }
end

=begin
Identify and describe the Ruby method(s) you implemented.
.map! takes each element of an array, passess it to a block, and builds a new array with the returned values.

I would used this method if you want to iterate through a container object, and return the calculated values from the code block.

.is_a takes a class as an argument.
Returns a boolean value of true if the receiver object is an instance of that class.Returns false if it's not.

I would use this method if you want to filter values based on whether or not an
object belongs to a certain class.


.each loops through each item in a array one by one, and yields that value to the
code block.

I would used this method if you want to iterate through a container object, but return the original array.

I didn't find any new tricks to reading the documentation, but the blog post by Maria was great.
It helped me sort through the documentation more easily.
I will say that opening irb and typing in the example does with understanding what the method does.
=end




# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#