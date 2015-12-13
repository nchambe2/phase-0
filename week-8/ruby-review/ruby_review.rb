# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
#CREATE a class called BingoScorer

#CREATE a method called initialize which takes in a nested collection object of numbers

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)

  #Select a random letter from letters and store it in an instance variable called letter
  #Select a random number and store it in an instance variable called number

# Check the called column for the number called.
      # If the number is in the column, replace with an 'x' THEN
          #store the new board

#Check each row for 5 Xs across
    #If there are 5 xs horizontally in a row THEN
        #return bingo and true
    #Else say guess again

#What the class knows about itself
#board
#call letter
#call number

#What the class does
#checks if number exists in column
#changes that numbe to x if it does
#keeps track of the num of xs in each row

# sample boards

 horizontal = [[47, 44, 71, 8, 88],
               [100, 54, 5, 2, 19],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]

# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]


# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]



=begin
# Initial Solution
class BingoScorer

def initialize(horizontal)
  @bingo_board = horizontal
  @call_letter = nil
  @call_number = 0
  @column_b = nil
  @column_i = nil
  @column_n = nil
  @column_g = nil
  @column_o = nil
  p "This is your bingo board #{@bingo_board}."
end

def generate_bingo_number
   letters = ['b', 'i', 'n', 'g', 'o']
   @call_letter=  letters.sample
   @call_number = rand(1..100)
   p "#{@call_letter} #{@call_number}."
   check_row_for_match
end

def check_row_for_match
  p @column_b = @bingo_board[0]
  p @column_i = @bingo_board[1]
  p @column_n = @bingo_board[2]
  p @column_g = @bingo_board[3]
  p @column_o = @bingo_board[4]

  if (@call_letter == 'b')
      @column_b.map! do |num|
          if num == @call_number
              num = 'x'
          else
            num
          end
      end
  end

   if (@call_letter == 'i')
      @column_i.map! do |num|
          if num == @call_number
              num = 'x'
          else
            num
          end
      end
  end

   if (@call_letter == 'n')
      @column_n.map! do |num|
          if num == @call_number
              num = 'x'
          else
            num
          end
      end
  end

   if (@call_letter == 'g')
      @column_g.map! do |num|
          if num == @call_number
              num = 'x'
          else
            num
          end
      end
  end

 if (@call_letter == 'o')
      @column_o.map! do |num|
          if num == @call_number
              num = 'x'
          else
            num
          end
      end
  end
 bingo?
end

def bingo?
  if (@column_b.count("x") == 5)
      p "You won the game"
  elsif(@column_i.count("x") == 5)
      p "You won the game"
  elsif(@column_n.count("x") == 5)
      p "You won the game"
  elsif(@column_g.count("x") == 5)
      p "You won the game"
  elsif(@column_o.count("x") == 5)
      p "You won the game"
  else
      p "Keep playing"
      generate_bingo_number
  end
end

def return_bingo_board
  p @bingo_board
end

end
=end



# Refactored Solution
class BingoScorer

def initialize(horizontal)
  @bingo_board = horizontal
  @call_letter = nil
  @call_number = 0
  @column_b = @bingo_board[0]
  @column_i = @bingo_board[1]
  @column_n = @bingo_board[2]
  @column_g = @bingo_board[3]
  @column_o = @bingo_board[4]
  p "This is your bingo board :"
  @bingo_board.each { |row| p row }
end

def generate_bingo_number
   letters = ['b', 'i', 'n', 'g', 'o']
   @call_letter=  letters.sample
   @call_number = rand(1..100)
   p "#{@call_letter} #{@call_number}."
   check_row_for_match
end

def check_row_for_match
  case @call_letter
    when 'b' then @column_b.map! { |num| num == @call_number ?  num = 'x' :  num}
    when 'i' then @column_i.map! { |num| num == @call_number ?  num = 'x' :  num}
    when 'n' then @column_n.map! { |num| num == @call_number ?  num = 'x' :  num}
    when 'g' then @column_g.map! { |num| num == @call_number ?  num = 'x' :  num}
    when 'o' then @column_o.map! { |num| num == @call_number ?  num = 'x' :  num}
  end

 bingo?
end

def bingo?
  case
    when @column_b.count("x").eql?(5) then  p "BINGO!", return_bingo_board
    when @column_i.count("x").eql?(5) then  p "BINGO!", return_bingo_board
    when @column_n.count("x").eql?(5) then  p "BINGO!", return_bingo_board
    when @column_g.count("x").eql?(5) then  p "BINGO!", return_bingo_board
    when @column_o.count("x").eql?(5) then  p "BINGO!", return_bingo_board
    else p "No Bingo. Keep playing"
      generate_bingo_number
  end
end

def return_bingo_board
 p "This is your final bingo board:"
  @bingo_board.each { |row| p row }
end

end


# DRIVER TESTS GO BELOW THIS LINE
bingo = BingoScorer.new(horizontal)
bingo.generate_bingo_number





# Reflection
=begin
What concepts did you review or learn in this challenge?
I reviewed using case statements.
Previously, I had only used when and then while utilizing case statements
I had never used else statements though.
So I had to look up was that allowable, then figured out how to use it.
Also, having methods call other methods.

What is still confusing to you about Ruby?
In this situation I was unsure if I need to add attr_reader to my class.
Might have to go to office hours to clarify.

What are you going to study to get more prepared for Phase 1?
Hashes, enumerable/enumerators, and working on some extra algorithm problems.
=end