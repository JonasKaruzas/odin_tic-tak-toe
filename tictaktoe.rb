def display
  puts " #{$game_board[0]} | #{$game_board[1]} | #{$game_board[2]} "
  puts "---|---|---"
  puts " #{$game_board[3]} | #{$game_board[4]} | #{$game_board[5]} "
  puts "---|---|---"
  puts " #{$game_board[6]} | #{$game_board[7]} | #{$game_board[8]} "
end

def get_player_letter(player)
  if player == "Player1"
    puts "#{player}, pick a letter"
    return(gets.chomp)
  else
    puts "#{player}, pick a letter, not #{$player_letters[0]}"
    return(gets.chomp)
  end
end

def checkWin? 
  for i in 0..1
    player = $player_letters[i]
    if $game_board[0] == player && $game_board[1] == player && $game_board[2] == player ||
      $game_board[3] == player && $game_board[4] == player && $game_board[5] == player ||
      $game_board[6] == player && $game_board[7] == player && $game_board[8] == player ||
      $game_board[0] == player && $game_board[3] == player && $game_board[6] == player ||
      $game_board[1] == player && $game_board[4] == player && $game_board[7] == player ||
      $game_board[2] == player && $game_board[5] == player && $game_board[8] == player ||
      $game_board[0] == player && $game_board[4] == player && $game_board[8] == player ||
      $game_board[2] == player && $game_board[4] == player && $game_board[6] == player 
      
      puts "#{player} won!"
      $game_won = true
    end
  end
end

$game_board = ["0","1","2","3","4","5","6","7","8"]
$player_letters = []

$player_letters[0] = get_player_letter("Player1")
$player_letters[1] = get_player_letter("Player2")

$game_won = false

display()

until $game_won do
  puts "Player1 (#{$player_letters[0]}), choose a number"
  $game_board[gets.chomp.to_i] = $player_letters[0]
  
  display()
  checkWin?()

  puts "Player2 (#{$player_letters[1]}), choose a number"
  $game_board[gets.chomp.to_i] = $player_letters[1]
  
  display()
  checkWin?()
end
