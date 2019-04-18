require 'bundler'
Bundler.require
require_relative 'lib/app/player'
require_relative 'lib/app/Board'
require_relative 'lib/app/boardcase'
require_relative 'lib/app/game'
#require 'scrapper'
my_game = Game.new("caro", "robin")
while (my_game.victory_player1? != true) && (my_game.victory_player2? != true)


my_game.menu

end

if my_game.victory_player1? == true
puts "#{my_game.player1.name} a gagné"
elsif my_game.victory_player2? == true
	puts "#{my_game.player2.name} a gagné"
else puts "DRAW"
end
binding.pry
