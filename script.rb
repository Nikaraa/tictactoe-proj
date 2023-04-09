require_relative "logic.rb"
require_relative "board.rb"
require_relative "player.rb"
require_relative "display.rb"

def repeat?
  puts "Wanna repeat the game?"
  input = gets.chomp
  if (input.downcase == "y" || input.downcase == "yes")
    new_game = Game.new
    new_game.play_game
  else
    "Bye, thank you for playing the game!"
  end
end

game = Game.new
game.play_game

repeat?()
