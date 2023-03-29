
module Stepable

    def moves
        x, y = self.pos
        new_pos = []
        self.move_diffs.each do |sub_array|
            row = sub_array[0]
            col = sub_array[1]
            new_row = row + x
            new_col = col + y
            # Check to see if new position
            # is on board, empty or contains another piece of other color.
            if self.on_board?(new_row, new_col) && self.available?(new_row, new_col)
                new_pos << [new_row, new_col]
            end
        end
        new_pos
    end

    # Check if new position is on board
    def on_board?(x, y)
        (x >= 0 && x <= 7) && (y >= 0 && y <= 7)
    end

    # Check if there is a piece at new position
    def available?(x, y)
        @board[[x, y]].color == nil || @board[[x, y]].color != self.color
    end

    def move_diffs
        raise NotImplementedError
    end


end
