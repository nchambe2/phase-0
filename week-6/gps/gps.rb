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

  #if error counter > 0 then return a argument error


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



p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

