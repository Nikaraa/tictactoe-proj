module Display
  def display_start
    puts "Welcome, let's play a tic-tac-toe game!"
  end

  def ask_name(num)
    puts "Please, enter the name of the #{num} player."
  end

  def ask_sign
    return puts "Please, enter a character for the player."
  end

  def player2_sign(player1_sign)
    puts "You can't choose #{player1_sign}!"
  end

  def player_move(name, sign)
    puts "#{name}, please enter a number between 1 and 9 to place your #{sign}"
  end

  def error_alert
    puts "Error. Invalid choose"
  end

  def tie_game
    puts "It's a draw!"
  end

  def win_game(player)
    puts "#{player} won the game!"
  end
end
