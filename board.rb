class Board
  attr_accessor :game_board, :turn
  YOU_WIN_IF = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6],
  ]

  def initialize
    @game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def show_board
    puts " #{game_board[0]} | #{game_board[1]} | #{game_board[2]} "
    puts "-----------"
    puts " #{game_board[3]} | #{game_board[4]} | #{game_board[5]} "
    puts "-----------"
    puts " #{game_board[6]} | #{game_board[7]} | #{game_board[8]} "
  end

  def new_board(place, sign)
    @game_board[place] = sign
  end

  def check_move?(place)
    @game_board[place.to_i - 1].between?(0, 8)
  end

  def full?
    @game_board.any? { |single| single =~ /[^0-9]/ }
  end

  def check_win?
    YOU_WIN_IF.any? do |comb|
      [game_board[comb[0]], game_board[comb[1]], game_board[comb[2]]].uniq.length == 1
    end
  end
end
