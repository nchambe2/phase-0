# Factorial

#create a method called factorial

#the method will take a argument of 0
#then inside the method we will return 1

#the method will take a argument of 1
#then inside the method we will return 1
#
#the method will take a argument of 10
#then the expected solution will be 3628800
#
#the method will take an argument of 20
#then the expected solution will be 2432902008176640000
#
#the method will take an argument of 1000
#and when divided by a 1000 the remainder should be 0
#No floats

# I worked on this challenge [by myself, with: ].


# Your Solution Below
def factorial(number)
  if number == 0
   p 1
  elsif number == 1
   p 1
  else
  counter = (number - 1)
  mult = number
   while counter >= 1
     mult = mult * counter
     counter = counter - 1
   end
  p mult
 end
end