module Stepable.rb
# fix iteration
    def moves 
        x, y = self.pos 
        new_pos = []
        possible.each do |sub_array|
            row = sub_array[0]
            col = sub_array[1]
            new_row = row + x
            new_col = col + y
            possible_pos << [new_row, new_col]
        end
        new_pos
    end
end