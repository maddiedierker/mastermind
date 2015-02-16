# This class displays the rules of MasterMind to player
class Rules
    attr_accessor :rule_confirmation

    def initialize(rule_confirmation)
        show_rules(rule_confirmation)
    end

    # Use player input to display rules of game or begin playing
    def show_rules(rule_confirmation)
        if rule_confirmation == "Y" || rule_confirmation == "y"
            puts %Q{\tHere are the rules of the game:
            - You will choose a code made up of 4 colors (there can be duplicates)
            - The colors you can choose from are RED, GREEN, ORANGE, YELLOW, BLUE, and PURPLE
            - I have 10 turns to guess the code
            - After each turn I take, you will confirm if any of the colors I have chosen are correct AND if they are in the correct position
            - If I can't guess the code in 10 turns, you win!

            Let's start playing!
            }
        else
            puts "Okay, let's start playing!\n\n"
        end
    end
end