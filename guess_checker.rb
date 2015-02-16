# This class checks if computer guesses are correct based on user input
require './game'

class GuessChecker
    attr_accessor :guess
    
    def initialize(guess)
        @pegs = []
        guess.each { |color| color_check(color) }
        p @pegs
    end

    def color_check(color)
        print "Is #{color} in your code? (Y/N): "
        color_confirmation = gets.chomp
        if color_confirmation == "Y" || color_confirmation == "y"
            position_check
        else
            @pegs << 'none'
            puts "-------------"
        end
    end

    def position_check
        print "Is it in the correct position? (Y/N): "
        position_confirmation = gets.chomp
        if position_confirmation == "Y" || position_confirmation == "y"
            @pegs << 'red'
        else
            @pegs << 'white'
        end
        puts "-------------"
    end
end