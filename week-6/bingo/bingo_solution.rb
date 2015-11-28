# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2] hours on this challenge.

# Release 0: Pseudocode

#CREATE a blueprint called BingoBoard

#CREATE a method called initialize which takes in a nested collection objects of numbers

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create a collection object called letters
  #Select a random letter from letters and store it in an instance variable called letter
  #Select a random number and store it in an instance variable called number

# Check the called column for the number called.
  #Check the column that corresponds to the random letter to see if that column includes the randomly generated number
      # If the number is in the column, replace with an 'x' THEN
          # Display the column to the console

# Display the whole board to the console (prettily)

#What the class knows about itself
#board
#call letter
#call number

#What the class does
#checks if number exists in column
#changes that numbe to x if it does
#returns the column withthe x  in it

#returns the full board with the x in it

# Initial Solution

#class BingoBoard

 #def initialize(board)
 #  @bingo_board = board
 #end

 #def item_on_board
 #    letters = ['b', 'i', 'n', 'g', 'o']
 #  p @letter = 'b' #letters.sample
 #  p @number =  22 #rand(1..100)

 #end

 #def check_col_for_num
 #  @transposed_array = @bingo_board.transpose
 #    case @letter
 #        when 'b'
 #          if @transposed_array[0].include?(@number)
 #                find_index = @transposed_array[0].find_index(@number)
 #                @transposed_array[0][find_index] = 'x'
 #                p @transposed_array[0]
 #          else
 #            p 'No match'
 #          end
 #        when 'i'
 #          if @transposed_array[1].include?(@number)
 #              find_index = @transposed_array[1].find_index(@number)
 #              @transposed_array[1][find_index] = 'x'
 #              p @transposed_array[1]
 #          else
 #              p 'No match'
 #          end
 #        when 'n'
 #          if @transposed_array[2].include?(@number)
 #              find_index = @transposed_array[2].find_index(@number)
 #              @transposed_array[2][find_index] = 'x'
 #              p @transposed_array[2]
 #          else
 #              p 'No match'
 #          end
 #        when 'g'
 #          if @transposed_array[3].include?(@number)
 #              find_index = @transposed_array[3].find_index(@number)
 #              @transposed_array[3][find_index] = 'x'
 #              p @transposed_array[3]
 #          else
 #              p 'No match'
 #          end
 #        when 'o'
 #          if @transposed_array[4].include?(@number)
 #              find_index = @transposed_array[4].find_index(@number)
 #              @transposed_array[4][find_index] = 'x'
 #              p @transposed_array[4]
 #          else
 #              p 'No match'
 #          end
 #    end
 #end

 #def bingo_board
 #   @bingo_board = @transposed_array.transpose
 #   @bingo_board.each { |sub_array| p sub_array}
 #end


#end

# Refactored Solution

class BingoBoard
  attr_reader :bingo_board

  def initialize(board)
    @bingo_board = board
    p "Your bingo board: #{@bingo_board}"
  end

  def convert_col_to_rows
    @transposed_array = @bingo_board.transpose
  end

   def assign_letters_to_rows
     @reformated_board = {
        'b' => @transposed_array[0],
        'i' => @transposed_array[1],
        'n' => @transposed_array[2],
        'g' => @transposed_array[3],
        'o' => @transposed_array[4]
      }
  end

  def call
      letters = ['b', 'i', 'n', 'g', 'o']
      @letter = letters.sample
      @number = rand(1..100)

      p "#{@letter} #{@number}"
  end

  def check_col_for_match
    column_b = @reformated_board['b']
    column_i = @reformated_board['i']
    column_n = @reformated_board['n']
    column_g = @reformated_board['g']
    column_o = @reformated_board['o']

    case @letter
        when 'b'
            column_b.collect! { |number| (number == @number) ? "x" : number }
            p "column b #{column_b}"
        when 'i'
           column_i.collect! { |number| (number == @number) ? "x" : number }
            p "column i #{column_i}"
        when 'n'
            column_n.collect! { |number| (number == @number) ? "x" : number }
            p "column n #{column_n}"
        when 'g'
          column_g.collect! { |number| (number == @number) ? "x" : number }
          p "column g #{column_g}"
        when 'o'
         column_o.collect! { |number| (number == @number) ? "x" : number }
         p "column o #{column_o}"
    end
end

 def return_board
    final_board = @transposed_array.transpose
    final_board.each { |sub_array| p sub_array }
 end

end

#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
p new_game.bingo_board
new_game.convert_col_to_rows
new_game.assign_letters_to_rows
new_game.call
new_game.check_col_for_match
new_game.return_board


#Reflection
=begin
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
Pseudocoding this challenge was very important for my understanding of what I had to do. I admit if you had asked me just 3 weeks ago to make a bingo game I wouldn't even know where to start. So the fact that I was able to do this was super exciting for me. When I pseudocoded I break it down into small chunks of what each step should be. I also wrote out what the class knows about itself, and also what it's behaviors are. After that I was able to complete the first couple of steps very fast. Accessing the values in the columns was pretty stressful for awhile. What kept me grounded was that I just tried to keep in perspective what I wanted to do vs. getting bogged down in syntax.

What are the benefits of using a class for this challenge?
Using a class helps gives you the power of organization and duplication. Creating a bingoboard class means that you can create several instances of different bingo boards. Also, your able to bundle the behavior and state of an object in one place.

How can you access coordinates in a nested array?
If you put array[num_of_array_to_access] that will return the whole sub array. If you want to access a value withing that sub array. You would do array[num_of_array_to_access][index_of_value].

What methods did you use to access and modify the array?
I used transpose, collect!, and each.

Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
One of my biggest blockers was accesing a value within a column. After some googling I came across transpose. Transpose allows you to work with a matrix like structure by converting columns into rows. Having this abillty made it much easier to access the values. Once I was finished checking the column for a value match. I could convert the rows back into columns by using transpose. (Transpose saved my life!)

How did you determine what should be an instance variable versus a local variable?
I thought about two things. 1.) What are the objects attributes. 2.) What is variables need to be used in multiple methods. Something that was a little more tricker to me was determing whether I need to create a reader/writer method for each instance variable. I'm not sure if I got that part right.

What do you feel is most improved in your refactored solution?
The check_call_for_num method needed the most refactoring. It was full of duplication, poorly named variables, and behavior that needed to be extracted in to it's method. I felt that the changes I made to my solution makes it far more readable, and less repetitive. I also think if someone else had to work on my solution it would be easier for them to refactor or extend the current class.

=end

