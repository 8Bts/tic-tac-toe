class Player
  def initialize(name)
    @name = name
    @turns = []
    @sign = name[0]
  end

  def add_turn(turn)
    @turns << turn
  end
end
