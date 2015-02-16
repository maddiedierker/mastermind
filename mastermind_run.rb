require './mastermind_rules'
require './mastermind_turn'

# Before starting the game, ask player if she would like to see the game's rules
print "Would you like to know the rules of the game? (Y/N): "
rule_confirmation = gets.chomp

# Use Rules class to show player rules or begin playing
game_rules = Rules.new(rule_confirmation)

# Computer begins guessing code
turn_counter = 0
turns = Turn.new(turn_counter)