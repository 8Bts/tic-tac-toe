class GameBoard
  @@board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def self.print_cells
    p @@board_cells
  end

  def self.print_board
    "   #{@@board_cells[0]}  |  #{@@board_cells[1]}  |  #{@@board_cells[2]}
  ---- ----- -----
   #{@@board_cells[3]}  |  #{@@board_cells[4]}  |  #{@@board_cells[5]}
  ---- ----- -----
   #{@@board_cells[6]}  |  #{@@board_cells[7]}  |  #{@@board_cells[8]} "
  end

  def self.mark_board(index, sign)
    if index < 1 || index > 9
      return 'Wrong index'
    elsif @@board_cells[index - 1].is_a?(String)
      return "The cell with index[#{index}] is already signed"
    end

    @@board_cells[index - 1] = sign
  end
end
