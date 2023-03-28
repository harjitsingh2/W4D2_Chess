require_relative 'Piece.rb'
require_relative 'NullPiece.rb'
class Board

    def initialize
        @grid= Array.new(8) { Array.new(8)}
        @rows[0..1] = Piece.new
        @rows[6..7] = Piece.new
        @rows[2..5] = NullPiece.new
    end

    def [](pos)
        row, col = pos
        @grid[row][col]
    end

    def []=(pos, val)
        row, col = pos
        @grid[row][col] = val
    end












end
