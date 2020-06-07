require_relative './game_board.rb'

class Array
  def contain_all?(arr)
    arr.all? { |elem| include?(elem) }
  end
end

module GamePlay
  WIN_STATES = [
    [1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9], [2, 5, 8], [3, 5, 7], [1, 4, 7], [3, 6, 9]
  ].freeze

  def self.won?(player)
    WIN_STATES.any? { |elem| player.turns.contain_all?(elem) }
  end
end
