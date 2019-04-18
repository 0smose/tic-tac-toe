
class Board
	attr_accessor :board_case, :my_cases
	attr_reader :case_separator
	@@move_count = 0
	

	def initialize
		@board_case = BoardCase.new
		@my_cases = {"a1" => @board_case, "a2" => @board_case, "a3" => @board_case, 
			"b1" => @board_case, "b2" => @board_case, "b3" => @board_case, 
			"c1" => @board_case, "c2" => @board_case, "c3" => @board_case}
			
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
