
class Game
  @@game_board = [" "," "," "," "," "," "," "," "," "]
  
  def display
    puts " #{@@game_board[0]} | #{@@game_board[1]} | #{@@game_board[2]} "
    puts "---|---|---"
    puts " #{@@game_board[3]} | #{@@game_board[4]} | #{@@game_board[5]} "
    puts "---|---|---"
    puts " #{@@game_board[6]} | #{@@game_board[7]} | #{@@game_board[8]} "
  end
  

end

g = Game.new()
g.display

class Player
  def initialize(name)
    @name = name
end

def get_name
  puts "Player, enter your name"
  return (get_s.chomp)
end

# Create board
# Create player1
# Create player2

# Show board
# Ask player1 for move
# if cell is not empty > try again
# update board
#   checkWin?

# Show board
# Ask player2 for move
# if cell is not empty > try again
# update board
#   checkWin?
  