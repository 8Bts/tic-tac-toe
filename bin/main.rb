#!/usr/bin/env ruby

require_relative '../lib/game_board'
require_relative '../lib/player.rb'

puts 'Welcome!! to Tic Tac Toe, a game for geniuses'
puts 'player 1: please enter your name'
p1_name = gets.chomp
puts 'player 2: please enter your name'
p2_name = gets.chomp

# Board will be required from board.rb file


# Determine player to go first
players = [p1_name, p2_name]
play_first = players[rand(2)]
play_second_arr = players.reject { |elem| elem == play_first }
play_second = play_second_arr[0]
puts "#{play_first} has been randomly chosen to play first"

# until Game.game_over?
puts GameBoard.update_board
puts 'Choose one cell from the board between 1 and 9'
puts "#{play_first}'s turn"
turn = gets.chomp.to_i
GameBoard.mark_board(turn, 'X')
puts GameBoard.update_board
# Validate turn variable
# player1.pushturn(turn)
# Game.won?(player1)
# Update board
# Second players turn to mark the board
puts "#{play_second}'s turn'"
turn = gets.chomp.to_i
GameBoard.mark_board(turn, 'Y')
# Validate turn variable
# player2.pushturn(turn)
# Game.won?(player2)
# Update board
# end
