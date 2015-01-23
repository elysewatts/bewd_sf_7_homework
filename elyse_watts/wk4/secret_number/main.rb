###############################################################################
#
# Object Oriented Secret Number
#
###############################################################################

require 'pry'
require 'pry-byebug'

$:.unshift (File.dirname(__FILE__)) # what the heck is this line??
require 'lib/game'

# the directions seemed to say that Main should be a class - or at least a method
# the directions are a bit confusing to me.
# I don't understand how it could/should be a class but i could make a main method.
# It just seems unnecessary?
# I also don't understand how/why we would use a hash in this game as directed..

puts "---Secret Number by Elyse Watts---"
puts "What's your name?"
player_name = gets.strip
game = Game.new(player_name)
game.start
