require_relative "Piece"
require_relative "Stepable"


class King < Piece
    include Stepable

    def symbol
        '♚'.colorize(color)
    end

    def move_diffs
        possible = [[0,1], [0,-1], [1,1], [1,-1], [-1,1], [-1,-1], [1,0], [-1,0]]
        return possible
    end

end
