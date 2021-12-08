require_relative 'game'
require_relative 'box'
require_relative 'die'

N_TILES = 9
N_DICE = 2
N_SIDES = 6

dice = (1..N_DICE).map { |i| Die.new(N_SIDES) }
box = Box.new(N_TILES)
game = Game.new(box, dice)

game.prepare_next_round
game.play until game.over?
puts game.results
