require_relative "display.rb"

class Game
  include Display
  attr_accessor :board, :player1, :player2, :board, :current

  def initialize
    @board = Board.new
    @player1 = nil
    @player2 = nil
    @current = nil
  end

  def play_game
    set_players()
    board.show_board()
    turns()
    end_game()
  end

  def set_players
    display_start()
    @player1 = create_player("first")
    @player2 = create_player("second", @player1.sign)
  end

  def create_player(order, firstplayer_symbol = nil)
    puts ask_name(order)
    name = gets.chomp
    sign = check_sign(firstplayer_symbol)
    Player.new(name, sign)
  end

  def update_board(player)
    move = turn_move(player)
    board.new_board(move.to_i-1, player.sign)
    board.show_board
  end

  def turns
    @current = player1
    until board.full?
      update_board(current)
      break if (board.check_win?)
      @current = switch_players()
    end
  end

  def switch_players
    if current == player1
      player2
    else
      player1
    end
  end

  def turn_move(player)
    loop do
      player_move(player.name, player.sign)
      num = gets.chomp.to_i
      if (board.check_move?(num))
        return num
      else error_alert()
      end
    end
  end

  def check_sign(firstplayer_symbol)
    loop do
      ask_chomp(firstplayer_symbol)
      s = gets.chomp
      return s if s.match?(/[a-zA-Z]/) && s != firstplayer_symbol
      error_alert()
    end
  end

  def ask_chomp(firstplayer_symbol)
    ask_sign()
    player2_sign(firstplayer_symbol) if firstplayer_symbol
  end

  def end_game
    if (board.check_win?)
      win_game(current.name)
    else
      tie_game()
    end
  end
end
