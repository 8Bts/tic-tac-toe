require_relative './game_board.rb'

class Player
  def initialize(name)
    @name = name
    @turns = []
    @sign = name[0]
  end

  def make_turn(index)
    return 'Wrong index' if (index < 1 || index > 9)

    result = GameBoard.mark_board(index, @sign)
    return result unless result == @sign
    @turns << index
    @turns
  end

end

me = Player.new('Exekiel')
p me.make_turn(2)
