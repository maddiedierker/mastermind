# This class creates the computer's guesses for each turn, then checks if they are correct using the GuessChecker class
require './guess_scorer'
require './code_mapper'

class Game
    attr_accessor :turn_counter

    def initialize(turn_counter)
        @turn_counter = turn_counter
        @first_guess = '0011'
        guess_generator
    end

    def guess_generator
        if @turn_counter == 1
            new_code_to_map = CodeMapper.new
            first_guess_with_colors = new_code_to_map.map_code_to_colors(@first_guess)
            puts "TURN #{turn_counter}: #{first_guess_with_colors}"
            first_guess_score = GuessScorer.new(first_guess_with_colors)
            @turn_counter += 1
        elsif @turn_counter > 1 && @turn_counter < 10
        else
            puts "I lost! You win this time, human..."
        end
    end
end