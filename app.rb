require 'bundler'
Bundler.require
require_relative 'lib/app/player'
require_relative 'lib/app/Board'
require_relative 'lib/app/boardcase'
require_relative 'lib/app/game'
require_relative 'lib/views/show'



def intro
		# On affiche l'introduction du jeu
	puts "-------------------------------------------------"
	puts "|  Bienvenue sur 'LE MODAFUCKING MORPION' !      |"
	puts "-------------------------------------------------"

	# On demande l'utilisateur son prénom
	puts "Quel est ton prénom JOUEUR 1 ?"
	print ">"
	@player_1 = gets.chomp.to_s
	puts "Quel est ton prénom JOUEUR 2 ?"
	print ">"
	@player_2 = gets.chomp.to_s

end	



def perform
	intro
	my_game = Game.new(@player_1, @player_2)
	while my_game.is_still_ongoing?
		my_game.board.show_board
		my_game.menu
	end
	my_game.game_over
end

perform

binding.pry
