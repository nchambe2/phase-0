# PezDispenser Class from User Stories

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.


# 1. Review the following user stories:
# - As a Pez user, I'd like to be able to "create" a new Pez dispenser with a group of flavors that
#      represent Pez so it's easy to start with a full Pez dispenser.
# - As a Pez user, I'd like to be able to easily count the number of Pez remaining in a dispenser
#      so I can know how many are left.
# - As a Pez user, I'd like to be able to take a Pez from the dispenser so I can eat it.
# - As a Pez user, I'd like to be able to add a Pez to the dispenser so I can save a flavor for later.
# - As a Pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# Pseudocode
=begin
Create pez dispenser class

Create a initialize method that takes in a collection object of flavors
Create a instance variable called flavors.
Create a instance variable called count.

Create a attr_reader and write method for the flavors variable
Create a attr_reader for the count flavors.

Create a method called count_num_of_pez
    iterates through the flavors collection object
    stores the amount of pez's in the current dispenser and returns the value
END

Create a method called take_pez_from_dispenser
  pops a pez from the back of the stack and returns the pez flavor
  subtracts one from the current count
END

Create a method called add_pez_to_dispenser
    Adds the pez to the bottom of the stack
    updates the count
END

Create a method called list_current_pez_flavors
  Iterates through the pez dispenser
      and returns each flavor
  END
END
=end


# Initial Solution

class PezDispenser

    def initialize(flavors)
      @flavors = flavors
      @count = 0
    end

    def pez_count
      @count = @flavors.length
    end

    def see_all_pez
      @flavors.map { |flavor| flavor}
    end

    def add_pez(flavor)
      return @flavors.push(flavor)
      pez_count
    end

    def get_pez
      return @flavors.pop
      pez_count
    end

end



# Refactored Solution
=begin
class PezDispenser

    def initialize(flavors)
      @flavors = flavors
      @count = 0
    end

  def see_all_pez
     @flavors.map {|flavor| flavor}
  end

  def add_pez(flavor)
     @flavors << flavor
   end

  def get_pez
     @flavors.shift
   end

     def pez_count
      @count = @flavors.length
    end

end
=end




# DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
 puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
 puts "Here's a look inside the dispenser:"
 puts super_mario.see_all_pez
 puts "Adding a banana pez."
 super_mario.add_pez("banana")
 puts "Now you have #{super_mario.pez_count} pez!"
 puts "Oh, you want one do you?"
 puts "The pez flavor you got is: #{super_mario.get_pez}"
 puts "Now you have #{super_mario.pez_count} pez!"




# Reflection
