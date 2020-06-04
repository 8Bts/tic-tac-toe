#!/usr/bin/env ruby

require_relative '../lib/game_board'
require_relative '../lib/player.rb'
require_relative '../lib/game_play.rb'

include GamePlay

puts 'Welcome!! to Tic Tac Toe, a game for geniuses'

puts 'player 1: please enter your name'
p1 = Player.new(gets.chomp, 'X')

puts 'player 2: please enter your name'
p2 = Player.new(gets.chomp, 'O')

# Determine player to go first
players = [p1, p2]
play_first = players[rand(2)]
play_second = players.find { |elem| elem != play_first }
puts "#{play_first.name} has been randomly chosen to play first"
sleep(2)
counter = 0
while counter < 9
  puts GameBoard.update_board
  puts "#{play_first.name}'s turn'"
  puts "Enter a number from 1 to 9"
  turn = gets.chomp.to_i
  result = play_first.make_turn(turn)
  while result != turn do
    puts result
    turn = gets.chomp.to_i
    result = play_first.make_turn(turn)
  end
  puts GameBoard.update_board
  if GamePlay.won?(play_first)
    puts "#{play_first.name} won the game!"
    break
  end
  counter += 1

  puts "#{play_second.name}'s turn'"
  puts "Enter a number from 1 to 9"
  turn = gets.chomp.to_i
  result = play_second.make_turn(turn)
  until result == turn do
    puts result
    turn = gets.chomp.to_i
    result = play_second.make_turn(turn)
  end
  if GamePlay.won?(play_second)
    puts "#{play_second.name} won the game!"
    break
  end  
end