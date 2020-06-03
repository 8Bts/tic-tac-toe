class GameBoard
  @@board_cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  @@input = 1
 
  def self.print_board
    "   #{@@board_cells[0]}  |  #{@@board_cells[1]}  |  #{@@board_cells[1]}  
  ---- ----- -----  
   #{@@board_cells[3]}  |  #{@@board_cells[4]}  |  #{@@board_cells[5]}  
  ---- ----- -----  
   #{@@board_cells[6]}  |  #{@@board_cells[7]}  |  #{@@board_cells[8]} "
  end
  
  def self.mark_board(index, sign)
    
  end
end

puts GameBoard.mark_board(5, 'X')
puts GameBoard.print_board
