
class Board
	attr_accessor :board_case
	attr_reader :case_separator
	@@move_count = 0
	

	def initialize
		@board_case = BoardCase.new
		create_board
	end

	def create_board
		@my_cases = Hash.new
			@my_cases.push("a1" => "@board_case.case_display", "a2" => "@board_case.case_display", "a3" => "@board_case.case_display", 
			"b1" => "@board_case.case_display", "b2" => "@board_case.case_display", "b3" => "@board_case.case_display", 
			"c1" => "@board_case.case_display", "c2" => "@board_case.case_display", "c3" => "@board_case.case_display")
			

		@case_separator = "|"
		puts ""
		puts ""
		puts ""
		puts "__#{@my_cases[:a1]}__#{case_separator}__#{@my_cases[:a2]}__#{case_separator}__#{@my_cases[:a3]}__"
		puts "__#{@my_cases[:b1]}__#{case_separator}__#{@my_cases[:b2]}__#{case_separator}__#{@my_cases[:b3]}__"
		puts "  #{@my_cases[:c1]}  #{case_separator}  #{@my_cases[:c2]}  #{case_separator}  #{@my_cases[:c3]}  "
		puts ""
		puts ""
		puts ""

	end

	def modif_board(player_choice)
		@my_cases.each do |key, value|
			if value.is_empty? && key == player_choice
				value = player.symbol
			end
		end
	end

end
