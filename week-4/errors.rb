# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

#def cartman_hates(thing)
#  while true
#    puts "What's there to hate about #{thing}?"
#  end
#end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# The name of the file is errors.rb.
# 2. What is the line number where the error occurs?
# The line number where the error occurs is 170.
# 3. What is the type of error message?
# It is a syntax error message.
# 4. What additional information does the interpreter provide about this type of error?
# The interpreter is tellingme that there was an unexpected end keyword found.
# 5. Where is the error in the code?
# The error is actually on line 15.
# 6. Why did the interpreter give you this error?
# While loops have to be closed with the keyword end. This particular while loop was missing that end keyword.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# The error is occuring on line 36.
# 2. What is the type of error message?
# It is a NameError message.
# 3. What additional information does the interpreter provide about this type of error?
# It is saying that south_park is undefined.
# 4. Where is the error in the code?
# The error in the code is on line 36.
# 5. Why did the interpreter give you this error?
# When a method doesn't take any parameters the parentheses is left off when the method is called. The only way that the interpeter can tell whether this is a local variable or method is by looking at the method definition or the local variable assignment. In this case the interpreter can't find either, so it doesn't know what to do with this piece of code.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# The error is occuring on line 51.
# 2. What is the type of error message?
# It is a NoMethodError message.
# 3. What additional information does the interpreter provide about this type of error?
# It's telling me that the cartman() method is undefined.
# 4. Where is the error in the code?
# The error is on line 51.
# 5. Why did the interpreter give you this error?
# When a method is called the interpreter looks for that methods definition. That definition tells the interperter this is the code that needs to be executed when this particular method is called. Without that method definition the interpreter doesn't know what this method is supposed to do.
# --- error -------------------------------------------------------

#def cartmans_phrase
#  puts "I'm not fat; I'm big-boned!"
#end
#
#cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# The error is occuring on line 65.
# 2. What is the type of error message?
# It is a ArgumentError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter is telling me that the method was called with an argument, but the method definition doesn't take any arguments.
# 4. Where is the error in the code?
# The error in the code is on line 65.
# 5. Why did the interpreter give you this error?
# When you define a method you also define the number of parameters that method must be passed when it's called. In this case the cartmans_phrase method was defined without any parameters. However, when the method was called with an argument.

# --- error -------------------------------------------------------

#def cartman_says(offensive_message)
#  puts offensive_message
#end
#
#cartman_says

# 1. What is the line number where the error occurs?
# The error is occuring on line 84.
# 2. What is the type of error message?
# It is a ArgumentError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter is telling me that the method was defined with a parameter, but the method was called with no arguments.
# 4. Where is the error in the code?
# The error in the code is on line 88.
# 5. Why did the interpreter give you this error?
# When you call a method you must also pass the correct number of arguments which are defined in the method definition. In this case the cartman_says method was was called without any arguments. However, the method was defined with a parameter.



# --- error -------------------------------------------------------

#def cartmans_lie(lie, name)
#  puts "#{lie}, #{name}!"
#end
#
#cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# The error is occuring on line 105.
# 2. What is the type of error message?
# It is a ArgumentError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter is telling me that the method was defined with 2 parameters, but the method was called with only one argument.
# 4. Where is the error in the code?
# The error in the code is on line 109.
# 5. Why did the interpreter give you this error?
# When you call a method you must also pass the correct number of arguments which are defined in the method definition. In this case the cartmans_lie method was was called with only one argument. However, the method was defined with a two parameters.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# The error is occuring on line 124.
# 2. What is the type of error message?
# It is a TypeError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter is telling me that you are trying to perform a arithmetic operation on a integer and a string.
# 4. Where is the error in the code?
# The error in the code is on line 124.
# 5. Why did the interpreter give you this error?
# The error occured because you are trying to multiply the number five by the string "Respect my authoritay!"

# --- error -------------------------------------------------------

#amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# The error is occuring on line 139.
# 2. What is the type of error message?
# It is a ZeroDivisionError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interpreter is telling me that I tried to divide a number by 0.
# 4. Where is the error in the code?
# The error is on 139.
# 5. Why did the interpreter give you this error?
# Any time a number is divided by zero the result is undefined.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# The error is occuring on line 155.
# 2. What is the type of error message?
# It is a LoadError message.
# 3. What additional information does the interpreter provide about this type of error?
# The interperter is telling me that the relative path provided to that file can not be found. So it can't be loaded into the document.
# 4. Where is the error in the code?
# The error is on line 155.
# 5. Why did the interpreter give you this error?
# If you want to include variables, methods, or other information from another file you can use the require_relative method and pass it the relative path to the file you want to use. In this case we are requiring cartmans_essay.md in the errors.rb file. We are also saying that the path to that file is in the same directory as errors.rb. However, this file is not in the same directory. So when the interpeter tries to load it, it can't because it can't find it.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

#Which error was the most difficult to read?
# The error I had most trouble with was the zero division one. I had never seen this error before, and I also didn't know why you couldn't divide a number by zero.
#How did you figure out what the issue with the error was?
#So I had to do some googling, which lead me to a Kha Academy video on the subject. Once I was done brushing up on my basic math skills I was able to figure out why that occur was occuring.
#Were you able to determine why each error message happened based on the code?
#I was able to determine why each error message was happening based on the code except for the zero division error message. Watching the debugging video really helped a lot with this.
#When you encounter errors in your future code, what process will you follow to help you debug?
#When I encounter errrors in my code in the future I will:
# 1.) Look at what file the error is originating from.
# 2.) I will then look at the line the error message is telling me it is happening on.
# 3.) Next I will look at the type of error message that is happening.
# 4.) Then I will look at the additional information that the interpreter is providingto me.
# 5.) Then I will try to figure out if the line that the interpreter cited is really where the error is originating from.
# 6.) Finally, I will try to figure out why the interpreter gave me this by debugging the code.