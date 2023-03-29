require_relative 'Piece.rb'
require_relative 'NullPiece.rb'
require_relative 'Rook.rb'
require_relative 'Knight.rb'
require_relative 'Bishop.rb'
require_relative 'Queen.rb'
require_relative 'King.rb'
require_relative 'Pawn.rb'

class Board

    attr_accessor :grid

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
        # White Side
        @grid[0][0] = Rook.new(:white, self, [0,0])
        @grid[0][1] = Knight.new(:white, self, [0,1])
        @grid[0][2] = Bishop.new(:white, self, [0,2])
        @grid[0][3] = Queen.new(:white, self, [0,3])
        @grid[0][4] = King.new(:white, self, [0,4])
        @grid[0][5] = Bishop.new(:white, self, [0,5])
        @grid[0][6] = Knight.new(:white, self, [0,6])
        @grid[0][7] = Rook.new(:white, self, [0,7])
        #Pawns
        (1...2).each do |i|
            (0...grid.length).each do |j|
                grid[i][j] = Pawn.new(:white, self, [i,j])
            end
        end
        
        # Black Side
        @grid[7][0] = Rook.new(:black, self, [7,0])
        @grid[7][1] = Knight.new(:black, self, [7,1])
        @grid[7][2] = Bishop.new(:black, self, [7,2])
        @grid[7][3] = Queen.new(:black, self, [7,3])
        @grid[7][4] = King.new(:black, self, [7,4])
        @grid[7][5] = Bishop.new(:black, self, [7,5])
        @grid[7][6] = Knight.new(:black, self, [7,6])
        @grid[7][7] = Rook.new(:black, self, [7,7])
        #Pawns
        (6...7).each do |i|
            (0...grid.length).each do |j|
                grid[i][j] = Pawn.new(:black, self, [i,j])
            end
        end

        # Null Pieces
        (2..5).each do |i|
            (0...grid.length).each do |j|
                grid[i][j] = NullPiece.new(nil, self, [i,j])
            end
        end

    end



end
