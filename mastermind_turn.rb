# This class creates the computer's guesses for each turn, then checks if they are correct using the Check class
require './mastermind_check'

class Turn
    attr_accessor :turn_counter
    COLORS = ['RED','GREEN','ORANGE','YELLOW','BLUE','PURPLE']

    def initialize(turn_counter)
        @turn_counter = turn_counter
        first_turn
    end

    # The first turn of each game will be a random guess of 4 colors by the computer
    def first_turn
        turn1 = colors.sample(4)
        @turn_counter += 1
        puts "TURN #{turn_counter}: #{turn1}"
        check_if_turn_correct?(turn1)
    end

    def check_if_turn_correct?(turn)
        turn_check = GuessChecker.new(turn)
    end
end