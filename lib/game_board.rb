# rubocop: disable Style/ClassVars
class GameBoard
  @@board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]

  def self.board_cells
    @@board_cells
  end

  def self.print_board
    "\n\n\
    \t\t #{@@board_cells[0]}  |  #{@@board_cells[1]}  |  #{@@board_cells[2]}
    \t\t---- ----- -----
    \t\t #{@@board_cells[3]}  |  #{@@board_cells[4]}  |  #{@@board_cells[5]}
    \t\t---- ----- -----
    \t\t #{@@board_cells[6]}  |  #{@@board_cells[7]}  |  #{@@board_cells[8]} \n\n\n\n"
  end

  def self.mark_board(index, sign)
    return 'Wrong index' if index < 1 || index > 9
    if @@board_cells[index - 1].is_a?(String)
      return "The cell with index[#{index}] is already signed, choose another cell"
    end

    @@board_cells[index - 1] = sign
  end

  def self.update_board
    system('clear')
    GameBoard.print_board
  end

  def self.reset_board
    @@board_cells.size.times { |index| @@board_cells[index] = index + 1 }
  end
end
# rubocop: enable Style/ClassVars
