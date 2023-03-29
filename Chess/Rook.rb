require_relative "Piece"
require_relative "Slideable"

class Rook < Piece
    include Slideable

    def move_dirs
        horizontal_dirs
    end
end