# coding: utf-8

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
puts "#{play_first} has been randomly chosen to play first"

# until game_over?
# Clean the console and print the board again
puts 'Choose one cell from the board between 1 and 9'
gets.chomp.to_i
# Second players turn to mark the board
puts "#{play_first} has choosen, it's your turn to choose your place on the board"
gets.chomp.to_i
# end



