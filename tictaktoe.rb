
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
