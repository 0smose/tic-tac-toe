require 'bundler'
Bundler.require
require_relative 'lib/app/player'
require_relative 'lib/app/Board'
require_relative 'lib/app/boardcase'
require_relative 'lib/app/game'
require_relative 'lib/views/show'
#require 'scrapper'
my_game = Game.new("caro", "robin")
while my_game.is_still_ongoing?

my_game.board.show_board
my_game.menu


end

if my_game.victory_player1? == true
puts "#{my_game.player1.name} a gagné"
#system("echo YOU WIN|espeak")
elsif my_game.victory_player2? == true
	puts "#{my_game.player2.name} a gagné"
else puts "DRAW"
end
binding.pry
