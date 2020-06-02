
puts 'Welcome!! to Tic Tac Toe, a game for geniuses'
puts 'player 1: please enter your name'
p1_name = gets.chomp
puts 'player 2: please enter your name'
p2_name = gets.chomp

#Board will be required from board.rb file
puts '------Game board-------' 
puts '  1  ||  2  ||  3  ||'
puts ' ---    ---    ---'
puts '  4  ||  5  ||  6  ||'
puts ' ---    ---    ---'
puts '  7  ||  8  ||  9 ||'

# Determine player to go first
players = [p1_name, p2_name]
play_first = players[rand(2)]
play_second = players.select { |elem| elem != play_first}
puts "#{play_first} has been randomly chosen to play first"

# test win states 
win_states = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 5, 9 ], [3, 5, 7], [2, 5, 8]]
player1 = [2, 4, 6]
player2 = [1, 2, 3]

if win_states.any? { |elem| elem.eql?(player2) }
  puts "player 2 wins"
else
  puts "#{player2}"
end


# until Game.game_over?
puts 'Choose one cell from the board between 1 and 9'
puts "#{play_first}'s turn"
turn = gets.chomp.to_i
#Validate turn variable
# player1.pushturn(turn)
# Game.won?(player1)
# Update board
# Second players turn to mark the board
puts "#{play_second.join("")}'s turn'"
turn = gets.chomp.to_i
#Validate turn variable
# player2.pushturn(turn)
# Game.won?(player2)
# Update board
# end
