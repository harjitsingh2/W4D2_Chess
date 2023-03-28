class Board

    def initialize
        @rows = Array.new(8) { Array.new(8)}
        @rows[0..1] = Piece.new
        @rows[6..7] = Piece.new
        @rows[2..5] = NullPiece.new
    end











end
