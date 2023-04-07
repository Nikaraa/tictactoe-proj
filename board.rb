class Board
  attr_accessor :game_board, :turn
  you_win_if = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6],
  ]

  def initialize
    @game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @turn = 1
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

  def check_board?(place)
    @game_board[place - 1].between?(0, 8)
  end

  def check_win?
    you_win_if.any? do |winning_combinations|
      [game_board[winning_combinations[0]],
       game_board[winning_combinations[1]],
       game_board[winning_combinations[2]]].uniq.length == 1
    end
  end
end
