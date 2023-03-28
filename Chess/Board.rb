require_relative 'Piece.rb'
require_relative 'NullPiece.rb'
class Board

    def initialize
        @grid= Array.new(8) { Array.new(8, '__')}
        # @grid[0..1] = Piece.new
        # @grid[6..7] = Piece.new
        #@rows[2..5] = NullPiece.new
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
        if piece == '__'
            raise "There is no piece here."
        end
        # Check if end position is within the grid/board
        x, y = end_pos 
        if (x < 0 || x > 7) || (y < 0 || y > 7)
            raise "Not a valid end position"
        end

        # Set piece at end position & remove from start
        self[end_pos] = piece 
        self[start_pos] = '__'

    end












end
