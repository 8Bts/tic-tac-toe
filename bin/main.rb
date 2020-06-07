#!/usr/bin/env ruby
require_relative '../lib/game_board'
require_relative '../lib/player.rb'
require_relative '../lib/game_play.rb'

puts 'Welcome!! to Tic Tac Toe, a game for geniuses'

puts 'player 1: please enter your name'
p1 = Player.new(gets.chomp, 'X')

puts 'player 2: please enter your name'
p2 = Player.new(gets.chomp, 'O')

# Determine player to go first
def choose_first(player1, player2)
  players = [player1, player2]
  play_first = players[rand(2)]
  play_second = players.find { |elem| elem != play_first }
  puts "#{play_first.name} has been randomly chosen to play first"
  [play_first, play_second]
end

def logic(player)
  puts "#{player.name}'s turn'"
  puts 'Enter a number from 1 to 9'
  turn = gets.chomp.to_i
  result = player.make_turn(turn)
  while result != turn
    puts result
    turn = gets.chomp.to_i
    result = player.make_turn(turn)
  end
end

def winner?(player)
  if GamePlay.won?(player)
    puts "#{player.name} won the game!"
    return true
  end
  false
end

loop do
  play_again = false
  counter = 0
  play_first, play_second = choose_first(p1, p2)
  sleep(2)
  while counter < 9
    puts GameBoard.update_board
    logic(play_first)
    puts GameBoard.update_board
    break if winner?(play_first)

    counter += 1
    break if counter > 8

    logic(play_second)
    puts GameBoard.update_board
    break if winner?(play_second)

    counter += 1
  end
  puts 'Game was draw' if counter > 8
  puts 'Do you want to play again? (Y/N)'
  answer = gets.chomp.upcase
  play_again = true if answer == 'Y'
  GameBoard.reset_board
  play_first.reset_turns
  play_second.reset_turns
  break unless play_again
end
