# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

# Pseudocode
=begin
Create a instance variable called bingo_baord
Create a method called horizontal_bingo?
    create a empty_array called index_of_x = []
    iterate through each row
    IF row.include?(x)
        Find index of x
        push that value to the index_of_x array
        check index of x
        IF index_of_x = [0,1,2,3,4]
            return Bingo
        END IF
    END IF


Create a method called vertical_bingo?
    iterate through each row
      IF count of x eql 1 THEN
          find the index of x
          check the following rows and see if those indexes also include x
          if they do return vertical bingo
      END IF

CREATE a method called right_to_left_bingo?
    iterate through each row
    IF row one position 0 == x
    IF row two position 1 == x
    IF row two position 2 == x
    IF row two position 3 == x
    IF row two position 4 == x
        return Bingo
    END IF

CREATE a method called left_to_right_bingo?
    iterate through each row
    IF row one position 4 == x
    IF row two position 3 == x
    IF row two position 2 == x
    IF row two position 1 == x
    IF row two position 0 == x
        return Bingo
    END IF

=end



# sample boards

horizontal = [[47, 44, 71, 8, 88],
               ['x', 'x', 'x', 'x', 'x'],
               [83, 85, 97, 89, 57],
               [25, 31, 96, 68, 51],
               [75, 70, 54, 80, 83]]

 vertical = [[47, 44, 71, 'x', 88],
             [22, 69, 75, 'x', 73],
             [83, 85, 97, 'x', 57],
             [25, 31, 96, 'x', 51],
             [75, 70, 54, 'x', 83]]


 right_to_left = [['x', 44, 71, 8, 88],
                  [22, 'x', 75, 65, 73],
                  [83, 85, 'x', 89, 57],
                  [25, 31, 96, 'x', 51],
                  [75, 70, 54, 80, 'x']]


 left_to_right = [[47, 44, 71, 8, 'x'],
                   [22, 69, 75, 'x', 73],
                   [83, 85, 'x', 89, 57],
                   [25, 'x', 96, 68, 51],
                   ['x', 70, 54, 80, 83]]




# Initial Solution
class BingoScorer

    def initialize(board)
      @bingo_board = board
    end

    def win_bingo?
        index_of_x = []
       @bingo_board.each do |row|
           return "horizontal bingo" if row.count("x").eql?(5)
          if row.count("x").eql?(1)
              index = row.index("x")
              p index_of_x << index
              if index_of_x.all? { |num| num == index}
                  return "vertical bingo"
              elsif index_of_x.eql? [0,1,2,3,4]
                  return "right to left bingo"
              elsif index_of_x.eql? [4,3,2,1,0]
                  return "left to right bingo"
              end
          else
            return false
          end
        end
    end
end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:
horizontal_board = BingoScorer.new(horizontal)
vertical_board = BingoScorer.new(vertical)
r_to_l_board = BingoScorer.new(right_to_left)
l_to_r_board = BingoScorer.new(left_to_right)
p horizontal_board.win_bingo?
p vertical_board.win_bingo?
p r_to_l_board.win_bingo?
p l_to_r_board.win_bingo?



# Reflection

