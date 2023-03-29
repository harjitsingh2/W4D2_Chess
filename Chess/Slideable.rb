module Slideable

    HORIZONTAL_DIRS = [[1,0], [-1,0], [0,1], [0,-1]]

    DIAGONAL_DIRS = [[1,1], [-1,1], [-1,-1], [1,-1]]

    def horizontal_dirs 
        HORIZONTAL_DIRS
    end

    def diagonal_dirs
        DIAGONAL_DIRS
    end 

    def moves
    end

    def move_dirs
        # subclass implements this
        raise NotImplementedError 
    end

    def grow_unblocked_moves(dx,dy)
        unblocked_moves = []
        # Iterate through directions array and add to start position
        self.move_dirs.each do |direction|
        end


        # Check to see if position is available and on board


        # Shovel position into unblocked_moves array
    end

end