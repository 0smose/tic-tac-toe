
class Game
	attr_accessor :player1, :player2, :board

	def initialize(name_player1, name_player2)
		@player1 = Player.new(name_player1, "X")
		@player2 = Player.new(name_player2, "o")
		@board = Board.new
	end

	def menu
		puts "salut, dans quelle case veux-tu jouer ?"
		@board.my_cases.each do |key, value|
			if value.is_empty? 
				puts key
			end
		end
		puts "------------------------------"
		print "> "
		player_choice = gets.chomp.to_s.downcase
		menu_choice(player_choice)
	end

	def menu_choice(choice)
		@board.my_cases.each do |k, v|
			if choice == k
				if v.is_empty? == false
					puts "nononon, tu peux pas jouer ici bro"
				else @board.modif_board(choice)
				end
			end
		end
	end


end


