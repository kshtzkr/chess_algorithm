class Knight
	attr_accessor :moveset, :x_position, :y_position, :possible_moves

	def initialize(position)
		@moveset = [
      [x_position.to_i + 1, y_position.to_i],
      [x_position.to_i + 2, y_position.to_i],
      [x_position.to_i + 3, y_position.to_i],
      [x_position.to_i + 4, y_position.to_i],
      [x_position.to_i + 5, y_position.to_i],
      [x_position.to_i + 6, y_position.to_i],
      [x_position.to_i + 7, y_position.to_i],
      [x_position.to_i, y_position.to_i + 1],
      [x_position.to_i, y_position.to_i + 2],
      [x_position.to_i, y_position.to_i + 3],
      [x_position.to_i, y_position.to_i + 4],
      [x_position.to_i, y_position.to_i + 5],
      [x_position.to_i, y_position.to_i + 6],
      [x_position.to_i, y_position.to_i + 7],
      [x_position.to_i - 1, y_position.to_i],
      [x_position.to_i - 2, y_position.to_i],
      [x_position.to_i - 3, y_position.to_i],
      [x_position.to_i - 4, y_position.to_i],
      [x_position.to_i - 5, y_position.to_i],
      [x_position.to_i - 6, y_position.to_i],
      [x_position.to_i - 7, y_position.to_i],
      [x_position.to_i, y_position.to_i - 1],
      [x_position.to_i, y_position.to_i - 2],
      [x_position.to_i, y_position.to_i - 3],
      [x_position.to_i, y_position.to_i - 4],
      [x_position.to_i, y_position.to_i - 5],
      [x_position.to_i, y_position.to_i - 6],
      [x_position.to_i, y_position.to_i - 7]
		]
		@x_position = position[0]
		@y_position = position[1]
		@possible_moves = find_possible_moves
	end

	def find_possible_moves
		possible_moves = []

		@moveset.each do |move|
			x = @x_position + move[0]
			y = @y_position + move[1]

			if (0..7).include?(x) 
				if (0..7).include?(y) 
					possible_moves << [x, y]
				end
			end
		end
		possible_moves
	end
end