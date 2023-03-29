require_relative "Piece"
require_relative "Stepable"

class Knight < Piece
    include Stepable

    def symbol
        '♞'.colorize(color)
    end

    def move_diffs
        possible = [[1,2], [1,-2], [2,1], [2,-1], [-2,1], [-2,-1], [-1,2], [-1,-2]]
        return possible
    end

end
