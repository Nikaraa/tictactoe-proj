class Board
  attr_accessor :game_board
  you_win_if = [
    [0, 1, 2], [3, 4, 5], [6, 7, 8],
    [0, 3, 6], [1, 4, 7], [2, 5, 8],
    [0, 4, 8], [2, 4, 6],
  ]

  def initialize
    game_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def showBoard
    puts " #{game_board[0]} | #{game_board[1]} | #{game_board[2]} "
    puts "-----------"
    puts " #{game_board[3]} | #{game_board[4]} | #{game_board[5]} "
    puts "-----------"
    puts " #{game_board[6]} | #{game_board[7]} | #{game_board[8]} "
  end
end
