# Your Names
# 1) Albert Hahn
# 2) Nicolette

# We spent [85] minutes on this challenge.

# Bakery Serving Size portion calculator.

#Initial Solution

def serving_size_calc(item_to_make, order_quantity) #takes 2 parameters 1= item you want to make 2=quantity you want to make
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}#hash of items it has stored
  #item & quanity
  #local variable that stores a number

  #iterating through each item in the library
  unless library.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

  #Return the value of the item set that equal to serving_size
  #Remainder of order quanity & hash value
  serving_size = library[item_to_make]
  serving_size_mod = order_quantity % serving_size

  #If remainder == 0 then return first string else return second string
  if serving_size_mod.eql? 0
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
  else
    "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients."
      if serving_size_mod > 5 && serving_size_mod < 7
          "Suggested baking items #{library.key(5)}"
      elsif serving_size_mod > 1 && serving_size_mod < 5
          "Suggested baking items : #{library.key(1)}"
      else
          p "There is nothing else for you."
      end
  end
end

#Reflection
=begin
What did you learn about making code readable by working on this challenge?
I learned that your code will probably live on long after you wrote it.
It's important to make your code easy to follow so that others can easily dissect what it's doing, and makes it easier to refactor.

Did you learn any new methods? What did you learn about them?
I learned about how to use the key method.
My pair and I ran into an issue where we had a value, and needed to use that value to access a key.
After a little bit of googling we found the key method.
Often we are shown how to access values via keys, but not the other way around.

What did you learn about accessing data in hashes?
When accessing data in hashes you have to determine whether you need both the key/value pair, or just one of those two things.

What concepts were solidified when working through this challenge?
Importance of refactoring your code so it's readable and maintanable.
My pair and I did identify the issues with the code fairly quickly but, trying to decipher someone else's spaghetti code is hard.
So the message about clean code was heard on this challenge loud and clear.
=end


p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

