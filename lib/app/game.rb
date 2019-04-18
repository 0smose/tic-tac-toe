
class Game
	attr_accessor :player1, :player2, :board, :turn

	def initialize(name_player1, name_player2)
		@player1 = Player.new(name_player1, "X")
		@player2 = Player.new(name_player2, "o")
		@board = Board.new
		@turn = 1
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
		player_choice = choice
		@board.my_cases.each do |k, v|
			if choice == k
				if v.is_empty? == false
					puts "nononon, tu peux pas jouer ici bro"
				else	
					modif_board(player_choice)
					@turn += 1
				end
			end
		end
	end

	def modif_board(player_choice)
		@board.my_cases.each do |key, value|
			puts value
			if value.is_empty? && key == player_choice
				if turn.even?
					value.case_display = "o"
				else
					value.case_display = "X"
				end
			end
		end
	end
	



end


