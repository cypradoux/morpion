require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/board'
require_relative 'lib/boardcase'
require_relative 'lib/show'

new_board = Board.new
player1 = Player.new("José","X")
player2 = Player.new("Joséphine","O")

new_board.play_turn(player1)
new_board.display_board

binding.pry