require_relative 'Piece.rb'
require_relative 'NullPiece.rb'
class Board

    attr_reader :grid

    def initialize
        @grid= Array.new(8) { Array.new(8, nil)}
        self.populate
    end

    # Check what is at a position
    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    # Set a value to a position
    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end

    def move_piece(start_pos, end_pos)
        # Check if start position has a piece
        piece = self[start_pos]
        if piece == nil
            raise "There is no piece here."
        end
        # Check if end position is within the grid/board
        x, y = end_pos
        if (x < 0 || x > 7) || (y < 0 || y > 7)
            raise "Not a valid end position"
        end

        # Set piece at end position & remove from start
        self[end_pos] = piece
        self[start_pos] = nil
    end

    # private
    def populate
        # @grid[0][0] = Rook.new()

        (0...2).each do |i|
            (0...grid.length).each do |j|
                    grid[i][j] = Piece.new
            end
        end

        (6..7).each do |i|
            (0...grid.length).each do |j|
                    grid[i][j] = Piece.new
            end
        end
    end



end
