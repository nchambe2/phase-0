#Full name greeting
puts "What is your first name?"

first_name = gets.chomp

puts "What is your middle name?"

second_name = gets.chomp

puts "What is your last name?"

third_name = gets.chomp

puts 'Hello ' + first_name + ' ' + second_name + ' ' + third_name + '. ' + 'Nice to meet you!'

#Bigger, better favorite number
puts "What is your favorite namber?"

favorite_number = gets.chomp.to_i
bigger_better_number = favorite_number + 1


puts 'I know you said your favorite number is ' + ' ' + favorite_number.to_s + ' , but this number: ' +
      bigger_better_number.to_s + ' is a even bigger better number.'

#Define Method Solution
#https://github.com/nchambe2/phase-0/blob/master/week-4/define-method/my_solution.rb

#Return a Formatted Address Solution
#https://github.com/nchambe2/phase-0/blob/master/week-4/address/my_solution.rb

#Defining Math Methods Solution
#https://github.com/nchambe2/phase-0/blob/master/week-4/math/my_solution.rb

#How do you define a local variable?
#In order to define a local variable you set a variable name equal to a single value. 
#Local variable names can contain any sequence of characters, but the first letter must be lower case.
#For example: x = "a"

#How do you define a method?
# In order to define a method you have to use the keyword def.
# Then you add the method name. 
# Next to the method name you can include parameters that you plan to pass to the method. 
# Finally, you need to close the definition by placing the keyword end. 
# In between the def and the end keyword is where you place specific actions you want the method to perform.

#For example:
#def say_my_name(name)
  #block of code
#end

#What is the difference between a local variable and a method?
#Methods are resuable chunks of code that carry out specific tasks. 
#While local variables are containers for single values that you want to hold on to for later use. 
#While local variables don't actually do anything in of themselves you can query them in order to get information about what is stored inside of the variable. 
#Also, methods can perform actions on local variables.

#How do you run a ruby program from the command line?
#In order to run a ruby program from the command line you have to type ruby file_name.rb

#How do you run an RSpec file from the command line?
#In order to run a rspec file from the command line you have to type rspec file_name_spec.rb

#What was confusing about this material? What made sense?
#I don't think the material was confusing. 
#I thought it was a great opportunity to get more practice with Ruby, and spend some time reinforcing the core concepts.





