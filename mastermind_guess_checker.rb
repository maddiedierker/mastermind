# This class checks if computer guesses are correct based on user input
require './mastermind_turn'

class GuessChecker
    attr_accessor :guess
    
    def initialize(guess)
        @guess = guess
        check_computer_guess(@guess)
    end

    def check_computer_guess(guess)
        guess.each { |color| color_check(color) }
    end

    def color_check(color)
        print "Is #{color} in your code? (Y/N): "
        color_confirmation = gets.chomp
        if color_confirmation == "Y" || color_confirmation == "y"
            true
            position_check
        else
            false
            puts "-------------"
        end
    end

    def position_check
        print "Is it in the correct position? (Y/N): "
        position_confirmation = gets.chomp
        puts "-------------"
        if position_confirmation == "Y" || position_confirmation == "y"
            true
        else
            false
        end
    end
end