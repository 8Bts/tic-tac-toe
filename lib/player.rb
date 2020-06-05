require_relative './game_board.rb'

class Player
  attr_reader :turns, :name

  def initialize(name, sign)
    @name = name
    @turns = []
    @sign = sign
  end

  def make_turn(index)
    return 'Wrong index' if index < 1 || index > 9

    result = GameBoard.mark_board(index, @sign)
    return result unless result == @sign

    @turns << index
    index
  end

  def reset_turns
    @turns = []
  end  
end
