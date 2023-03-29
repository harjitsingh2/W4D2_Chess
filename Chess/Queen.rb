require_relative "Piece"
require_relative "Slideable"

class Queen < Piece
    include Slideable

    def move_dirs
        horizontal_dirs + diagonal_dirs
    end
end