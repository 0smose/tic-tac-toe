
class Player

	attr_accessor :name, :symbol

	def initialize(name, symbol)
	 @name = name
	 @symbol = symbol
	end


	def modif_board(player_choice)
		@my_cases.each do |key, value|
			if value.is_empty? && key == player_choice
				value = self.symbol
			end
		end
	end


end
