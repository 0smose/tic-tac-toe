
class Game
	attr_accessor :player1, :player2, :board

	def initialize(name_player1, name_player2)
		@player1 = Player.new(name_player1, "X")
		@player2 = Player.new(name_player2, "o")
		@board = Board.new
	end

	def menu
		puts "salut, dans quelle case veux-tu jouer ?"
		@my_cases.each do |key, value|
			if value.is_empty? 
				puts key
			end
		end
		puts "------------------------------"
		print "> "
		player_choice = gets.chomp.downcase
		menu_choice(player_choice)
	end

	def menu_choice(choice)
		@my_cases.each do |k, v|
		if choice == k
			k.each do |v|
				if v.is_empty? == false
					puts "nononon, tu peux pas jouer ici bro"
				end
			end
		end
	end
	end


end


