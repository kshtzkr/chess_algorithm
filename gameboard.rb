require_relative "knight.rb"

class Gameboard
	attr_accessor :pieces, :positions, :knight

	def initialize
		@pieces = {
			black_king: "♔",
			black_queen: "♕",
			black_rook: "♖",
			black_bishop: "♗",
			black_knight: "♘",
			black_pawn: "♙",
			white_king: "♚",
			white_queen: "♛",
			white_rook: "♜",
			white_bishop: "♝",
			white_knight: "♞",
			white_pawn: "♟" 
		}
		@positions = Array.new(8) { Array.new(8, " ") }
	end

	def display
		rows
		@positions.each_index do |row|
			print "#{row}  "
			@positions[row].each_index do |column|
				print "| #{@positions[row][column]}  "
			end
			puts "|"
			rows
		end
		x_axis
	end

	def rows
		print "   "
		8.times.each { print "+----" }
		puts "+"
	end

	def x_axis
		print "   "
		(0..7).each { |letter| print "  #{letter}  "}
		puts ""
	end

	def add_knight(position)
		@knight = Knight.new(position)
		@positions[@knight.x_position][@knight.y_position] = @pieces[:white_knight]
	end

	def move_knight(position)
		@positions[@knight.x_position][@knight.y_position] = " "
		@knight.x_position = position[0]
		@knight.y_position = position[1]
		@positions[@knight.x_position][@knight.y_position] = @pieces[:white_knight]
	end
end