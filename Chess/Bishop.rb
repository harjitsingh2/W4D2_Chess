require_relative "Piece"
require_relative "Slideable"

class Bishop < Piece
    include Slideable

    def move_dirs
        diagonal_dirs
    end 

end