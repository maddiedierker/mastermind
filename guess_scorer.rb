require './game'

class GuessScorer
    attr_accessor :guess
    
    def initialize(guess)
        @guess = guess
        get_guess_score
    end

    def get_guess_score
        print "Score me: "
        guess_score = gets.chomp.split('').map { |score_index| score_index.to_i }
        validate_guess_score(guess_score)
    end

    def validate_guess_score(score_to_validate)
        if score_to_validate.length > 4 || score_to_validate.any? { |index| index > 2 || index < 0 }
            puts "Sorry, the score you gave isn't valid! Try again."
            get_guess_score
        else
            score_to_validate
        end
    end
end