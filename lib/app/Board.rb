
class Board
	attr_accessor :board_case, :my_cases
	attr_reader :case_separator
	@@move_count = 0
	

	def initialize
		@my_cases = {"a1" => BoardCase.new, "a2" => BoardCase.new, "a3" => BoardCase.new, 
			"b1" => BoardCase.new, "b2" => BoardCase.new, "b3" => BoardCase.new, 
			"c1" => BoardCase.new, "c2" => BoardCase.new, "c3" => BoardCase.new}
			
		create_board
	end

	def create_board
		
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

end
