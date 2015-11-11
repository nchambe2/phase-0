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



