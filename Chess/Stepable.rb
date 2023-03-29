
module Stepable

# fix iteration
    def moves
        x, y = self.pos
        new_pos = []
        self.move_diffs.each do |sub_array|
            row = sub_array[0]
            col = sub_array[1]
            new_row = row + x
            new_col = col + y
            # Check to see if new position
            # is on board, empty or contains
            # another piece of other color.
            if self.on_board?(new_row, new_col) && self.available?(new_row, new_col)
                new_pos << [new_row, new_col]
            end
        end
        new_pos
    end

    def on_board?(x, y)
        (x >= 0 && x <= 7) && (y >= 0 && y <= 7)
    end

    def available?(x, y)

        # On board at this position, the color
        #  cannot be equal to color of self
        
        p @board[[x, y]]
        @board[[x, y]] == nil || @board[[x, y]].color != self.color
    end

    def move_diffs
        raise NotImplementedError
    end

    #  # Check what is at a position
    #  def [](pos)
    #     row, col = pos
    #     @grid[row][col]
    # end

    # # Set a value to a position
    # def []=(pos, val)
    #     row, col = pos
    #     @grid[row][col] = val
    # end


end
