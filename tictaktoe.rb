# Tic Tac Toe Game
class Game
  def initialize
    @game_board = %w[0 1 2 3 4 5 6 7 8]
    @game_end = false
    @player_letters = []
  end

  def display
    puts ''
    puts " #{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]} "
    puts '---|---|---'
    puts " #{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]} "
    puts '---|---|---'
    puts " #{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]} "
  end

  def check_win?(letter)
      if @game_board[0] == letter && @game_board[1] == letter && @game_board[2] == letter ||
        @game_board[3] == letter && @game_board[4] == letter && @game_board[5] == letter ||
        @game_board[6] == letter && @game_board[7] == letter && @game_board[8] == letter ||
        @game_board[0] == letter && @game_board[3] == letter && @game_board[6] == letter ||
        @game_board[1] == letter && @game_board[4] == letter && @game_board[7] == letter ||
        @game_board[2] == letter && @game_board[5] == letter && @game_board[8] == letter ||
        @game_board[0] == letter && @game_board[4] == letter && @game_board[8] == letter ||
        @game_board[2] == letter && @game_board[4] == letter && @game_board[6] == letter
        @game_end = true
        return true
      end
  end

  def getting_player_letters
    until @player_letters[0]
      puts 'Player1, pick a letter'
      add_letter
    end

    until @player_letters[1]
      puts "Player2, pick a letter, but not '#{@player_letters[0]}'"
      add_letter
    end
  end

  def add_letter
    input = gets.chomp

    if letter_correct?(input)
      @player_letters.push(input)
    else
      puts 'Input error, only one letter please'
      getting_player_letters
    end
  end

  def letter_correct?(ltr)
    if ltr.length == 1 && ltr.match(/[A-Za-z]/) && ltr != @player_letters[0]
      true
    end 
  end

  def ask_for_number
    number_used?(gets.chomp)
  end

  def number_used?(num)
    if @game_board.include? num
      num
    else
      puts "Input error, check if number is available and try again"
      ask_for_number
    end
  end

  def check_tie?
    if @game_board.join.match(/[0-8]/)
      false 
    else
      @game_end = true
      true
    end
  end

  def play_game
    until @game_end
      @player_letters.each_with_index do |l, idx| 
      display

      puts "Player#{idx + 1} (#{l}), choose a number"
      @game_board[ask_for_number.to_i] = l

      if check_win?(l)
        display
        puts "Player#{idx + 1} (#{l}) is the WINNER!"
      end

      break if @game_end

      if check_tie?
        display
        puts "No one won, it's a tie"
      end

      break if @game_end

      end
    end
  end
end

g = Game.new()
g.getting_player_letters
g.play_game
