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

def logic(player)
puts "#{player.name}'s turn'"
  puts "Enter a number from 1 to 9"
  turn = gets.chomp.to_i
  result = player.make_turn(turn)
  while result != turn do
    puts result
    turn = gets.chomp.to_i
    result = player.make_turn(turn)
  end
end

def has_winner?(player)
  if GamePlay.won?(player)
    puts "#{player.name} won the game!"
    return true
  end
  false
end

counter = 0
while counter < 9
  puts GameBoard.update_board
  logic(play_first)
  puts GameBoard.update_board
  break if has_winner?(play_first)
  counter += 1
  break if counter > 8
  logic(play_second)
  puts GameBoard.update_board
  break if has_winner?(play_second)
  counter += 1
  
end

